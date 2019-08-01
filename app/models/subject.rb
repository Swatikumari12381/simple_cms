class Subject < ApplicationRecord
  has_many :pages,dependent: :delete_all
  # Validation
   validates :name, presence: true,uniqueness: true, length: {maximum: 10}
   validates :position, presence: true, numericality: {message: "cannot be string"}
end
