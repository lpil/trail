# typed: strong
class Organisation < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :workflows, dependent: :destroy
end
