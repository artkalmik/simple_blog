class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 3 }
  acts_as_taggable # Alias for acts_as_taggable_on :tags
end