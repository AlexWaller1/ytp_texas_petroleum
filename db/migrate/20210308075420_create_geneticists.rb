class CreateGeneticists < ActiveRecord::Migration[6.1]
  def change
    create_table :geneticists do |t|
      t.string :name
      t.string :image
      t.string :education
      t.text :biography
      t.references :user

      t.timestamps
    end
  end
end
