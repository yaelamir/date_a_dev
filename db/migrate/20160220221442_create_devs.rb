class CreateDevs < ActiveRecord::Migration
  def change
    create_table :devs do |t|
      t.string :first_name
      t.string :last_name
      t.string :interested_in
      t.string :gender
      t.string :location
      t.string :email
      t.date   :born_on
      t.string :github_username
      t.string :prog_lang_pref
      t.string :dev_level
      t.string :picture_url
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
