class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :description
      t.float :price
      t.text :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
