class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :day

      t.timestamps
    end
  end
end
