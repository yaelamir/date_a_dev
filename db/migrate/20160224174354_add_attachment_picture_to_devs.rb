class AddAttachmentPictureToDevs < ActiveRecord::Migration
  def self.up
    change_table :devs do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :devs, :picture
  end
end
