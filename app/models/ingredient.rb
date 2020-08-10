class Ingredient < ApplicationRecord
  belongs_to :recipe

  def self.search(search)
    if search
      recipe=Recipe.find_by(name:search)
        if recipe
          self.where(recipe.id:superpower)
        else
          Recipe.all
        end
    else
      Recipe.all
    end
  end


end
