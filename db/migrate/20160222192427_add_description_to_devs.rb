class AddDescriptionToDevs < ActiveRecord::Migration
  def change
    add_column :devs, :description, :text
  end
end
