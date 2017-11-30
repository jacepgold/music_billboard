class Billboard < ApplicationRecord
  has_many :Songs
  has_many :Artists, through: :Songs
end
