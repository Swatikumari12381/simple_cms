class Subject < ApplicationRecord
  has_many :pages,dependent: :delete_all
  # Validation
   validates :name, presence: true,uniqueness: true
   validates :position, presence: true
end
