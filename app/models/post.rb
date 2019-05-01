class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    has_attached_file :resim, styles: {medium: "300x300>", thumb: "100x100>"
    },default_url:"/images/:style/missing.png"
    validates_attachment_content_type :resim, content_type: /\Aimage\/.*\z/
end
