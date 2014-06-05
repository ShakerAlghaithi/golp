class AddUserIdToThings < ActiveRecord::Migration
  def change
    add_column :things, :user_id, :integer , user: :references
  end
end
