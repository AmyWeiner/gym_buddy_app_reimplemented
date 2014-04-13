class AddYelpIdToGyms < ActiveRecord::Migration
  def change
    add_column :gyms, :yelp_id, :string
  end
end
