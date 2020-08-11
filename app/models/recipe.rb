class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, :dependent => :destroy

  def self.search(search)
    if search
      number_of_ingredients=search.to_i
      if Recipe.all.select{|x|x.ing_count==number_of_ingredients}.length>0
        Recipe.all.select{|x|x.ing_count==number_of_ingredients}
      else
        Recipe.all
      end
    else
      Recipe.all
    end
  end

  def ing_count
    self.ingredients.count
  end

end


