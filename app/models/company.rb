class Company < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true, length: {minimum: 3}
  validates :established_year, presence: true
end
