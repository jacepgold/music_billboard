class Song < ApplicationRecord
  belongs_to :billbaord, optional: true
  # belongs_to :artist
end