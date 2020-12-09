class Movie < ApplicationRecord
  after_initialize :set_default, if: :new_record?
  has_many :shows
  has_many :bookings, through: :shows

  validates :title, presence: true
  validates :title, uniqueness: true

  private

  def set_default
    self.active ||= true
  end
end
