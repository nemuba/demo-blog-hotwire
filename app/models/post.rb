class Post < ApplicationRecord
  validates :title, presence: true

  has_rich_text :content
  has_many :comments, dependent: :destroy
end
