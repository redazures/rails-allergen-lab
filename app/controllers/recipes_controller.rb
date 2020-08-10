class RecipesController < ApplicationController
    before_action :find_employee, only:[:show,:edit,:update,:destroy]

    def index
        @recipes=Recipe.all
    end

    def new
        @recipe=Recipe.new
    end

    def create
        @recipe=Recipe.create(params[:recipe_params])
        byebug
        if @recipe.valid?
            redirect_to recipe_path(@recipe)
        else
            flash[:my_errors]=@recipe.errors.full_messages
            redirect_to new_recipe_path
        end
    end

    private 
    def recipe_params
        params.require(:recipe).permit(:name, :content, :user_id)
    end

    def 
end
