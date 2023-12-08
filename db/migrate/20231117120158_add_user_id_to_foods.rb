class AddUserIdToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :user_id, :integer
  end
end
