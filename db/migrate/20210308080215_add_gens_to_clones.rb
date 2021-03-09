class AddGensToClones < ActiveRecord::Migration[6.1]
  def change
    add_reference :clones, :geneticist
  end
end
