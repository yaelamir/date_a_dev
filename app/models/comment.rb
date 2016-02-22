class Comment < ActiveRecord::Base

belongs_to :dev
belongs_to :commentor, class_name: 'Dev', foreign_key: 'author_id'

end
