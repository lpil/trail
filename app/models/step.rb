# typed: strong
class Step < ApplicationRecord
  extend T::Helpers
  abstract!

  belongs_to :workflow, inverse_of: :steps
end
