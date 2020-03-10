class Manuscript < ApplicationRecord
  has_many :quires, dependent: :destroy
end
