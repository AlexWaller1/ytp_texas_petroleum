class CreateClones < ActiveRecord::Migration[6.1]
  def change
    create_table :clones do |t|
      t.string :name
      t.string :image
      t.string :clone_type
      t.string :function

      t.timestamps
    end
  end
end
