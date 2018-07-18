class AddLocationToRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :location, :string
  end
end
