class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.integer :dev_id
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
