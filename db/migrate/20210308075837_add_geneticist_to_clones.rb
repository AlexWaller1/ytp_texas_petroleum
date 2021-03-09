class AddGeneticistToClones < ActiveRecord::Migration[6.1]
  def change
    add_reference :clones, :user
  end
end
