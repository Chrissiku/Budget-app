class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  has_many :group_entities
  has_many :entities, through: :group_entities

  validates :name, presence: true, length: { in: 4..250 }
  validates :icon, presence: true, length: { in: 4..250 }
  # icon must be a valid image.
  validates :icon, format: { with: %r{\.(gif|jpg|png|ico|jpeg)\Z}i, message: 'must be a URL for GIF, JPG, PNG, ICO or Jpeg image.' }
end
