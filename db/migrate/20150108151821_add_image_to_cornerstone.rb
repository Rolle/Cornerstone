class AddImageToCornerstone < ActiveRecord::Migration
  def self.up
    change_table :cornerstones do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :cornerstones, :image
  end
end
