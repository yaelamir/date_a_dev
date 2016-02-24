class Dev < ActiveRecord::Base
  has_secure_password


  validates :email, presence: true, uniqueness: true
  has_many :comments

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  # <%= image_tag.each do |pic| %>
  #   <article>
  #     <h4> <%= link_to pic.first_name, pic.picture_url %> </h4>


  #     <img src="#{dev.picture_url}">
  #   </article>
  # <% end %>

end
