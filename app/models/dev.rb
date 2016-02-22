class Dev < ActiveRecord::Base
  has_secure_password


  validates :email, presence: true, uniqueness: true
  has_many :comments


  # <%= image_tag.each do |pic| %>
  #   <article>
  #     <h4> <%= link_to pic.first_name, pic.picture_url %> </h4>


  #     <img src="#{dev.picture_url}">
  #   </article>
  # <% end %>

end
