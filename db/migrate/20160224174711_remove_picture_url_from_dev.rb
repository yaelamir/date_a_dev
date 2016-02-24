class RemovePictureUrlFromDev < ActiveRecord::Migration
  def change
    remove_column :devs, :picture_url
  end
end
