class IngredientsController < ApplicationController
    
    def index
        @ingredients = Ingredient.all
        # @ingredients=Ingredient.search(params[:search])
    end

    def show
        @ingredient=Ingredient.find(params[:id])
    end

    private
    def ingredient_params
        params.require(:ingredient).permit(:name,:search)
    end
end
