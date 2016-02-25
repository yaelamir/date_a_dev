class Dev < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: true
  has_many :comments, dependent: :destroy

  has_attached_file(
    :picture,
    styles: {
      standard: "210x210#",
      medium:   "300x300>",
      thumb:    "100x100>"
    },
    default_url: "/images/default-user.png"
  )
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  # <%= image_tag.each do |pic| %>
  #   <article>
  #     <h4> <%= link_to pic.first_name, pic.picture_url %> </h4>


  #     <img src="#{dev.picture_url}">
  #   </article>
  # <% end %>

  def matches(dev)
    self.vibes_with(dev) &&
    (
      self.hollad_at(dev) || dev.hollad_at(self)
    )
  end

  def vibes_with(dev)
    dev.gender         ||= ""
    self.gender        ||= ""
    dev.interested_in  ||= ""
    self.interested_in ||= ""
    self.interested_in.downcase == dev.gender.downcase &&
    dev.interested_in.downcase == self.gender.downcase
  end

  def hollad_at(dev)
    dev.comments.where(author_id: self.id).count > 0
  end
end
