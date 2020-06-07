# typed: strict
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :registerable, and
  # :omniauthable
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable,
    :validatable

  belongs_to :organisation, inverse_of: :users
end
