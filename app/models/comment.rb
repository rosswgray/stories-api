class Comment < ApplicationRecord
  belongs_to :story

  validates :name, presence: true
  validates :content, presence: true
end
