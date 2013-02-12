class CreateGeoposts < ActiveRecord::Migration
  def change
    create_table :geoposts do |t|
      t.string :content
      t.float :longitude
      t.float :latitude
      t.integer :user_id

      t.timestamps
    end
  end
end
