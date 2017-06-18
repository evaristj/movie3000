class Setting < ApplicationRecord
  belongs_to :user
  validates :country, presence: { message: :no_country}
  validates :language, presence: { message: :no_language}
  validates :country, length: { minimum: 2, message: :too_short }
end
