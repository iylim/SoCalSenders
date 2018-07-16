class AddPicturesToRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :pictures, :string
  end
end
