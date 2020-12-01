class Phrase < ApplicationRecord
  CATEGORIES = {
    'Actions' => 0,
    'Time' => 1,
    'Productivity' => 2,
    'Apologies' => 3,
    'Common' => 4
  }.freeze

  validates :phrase, :translation, presence: true
  validates :phrase, uniqueness: true
  validates :category,
            inclusion: {
              in: CATEGORIES,
              message: '%<value> is not a valid categoty'
            }

  enum category: CATEGORIES
end
