class RemoveUserIdFromClones < ActiveRecord::Migration[6.1]
  def change
    remove_column :clones, :user_id
  end
end
