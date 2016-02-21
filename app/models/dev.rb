class Dev < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :comments
  # has_many :made_by, class_name: "comment", foreign_key: "author"
end
