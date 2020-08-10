class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :content
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
