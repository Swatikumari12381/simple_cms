class Page < ApplicationRecord
  belongs_to :subject
  has_many :sections,dependent: :delete_all
  validates :name, presence: true,uniqueness: true
  validates :position, presence: true
end
