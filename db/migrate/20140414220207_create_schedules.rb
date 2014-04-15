class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.belongs_to :user, index: true
      t.belongs_to :availability, index: true

      t.timestamps
    end
  end
end
