class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :allergies
      t.string :allergic_to

      t.timestamps
    end
  end
end
