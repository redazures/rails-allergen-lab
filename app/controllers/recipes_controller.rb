class RecipesController < ApplicationController
    before_action :find_recipe, only:[:show,:edit,:update,:destroy]

    def index
        @recipes=Recipe.search(params[:search])
    end

    def show;end
    def new
        @recipe=Recipe.new
    end

    def create
        @recipe=Recipe.create(recipe_params)
        if @recipe.valid?
            redirect_to recipes_path
        else
            flash[:my_errors]=@recipe.errors.full_messages
            redirect_to new_recipe_path
        end
    end

    private 
    def recipe_params
        params.require(:recipe).permit(:name, :content, :user_id, :search)
    end

    def find_recipe
        @recipe=Recipe.find(params[:id])
    end
end
