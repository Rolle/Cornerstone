class CreateCornerstones < ActiveRecord::Migration
  def change
    create_table :cornerstones do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
