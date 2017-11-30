class Song < ApplicationRecord
  # belongs_to :billboard, optional: true
  # # belongs_to :artist
  # ' has_many :appointments
  # has_many :patients, through: :appointments'
  belongs_to :Artist, polymorphic: true
  belongs_to :Billboard, polymorphic: true
end