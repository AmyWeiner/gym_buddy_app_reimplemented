class AddTimeToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :time, :time
  end
end
