class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :difficulty
      t.string :type
      t.string :pitches
      t.text :description

      t.timestamps
    end
  end
end
