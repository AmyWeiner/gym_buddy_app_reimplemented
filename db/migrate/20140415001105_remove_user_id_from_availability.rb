class RemoveUserIdFromAvailability < ActiveRecord::Migration
  def up
    remove_column :availabilities, :user_id
  end

  def down
    add_column :tavailabilities, :user_id, :integer
  end
end
