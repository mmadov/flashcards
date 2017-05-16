class RecordValidator < ActiveModel::Validator
  def validate(record)
    if record.original_text.strip.upcase === record.translated_text.strip.upcase
      record.errors[:base] << "This person is evil"
    end
  end
end

class Card < ApplicationRecord
  before_create :normalize_card_review_date
  validates_with RecordValidator
  scope :review_date, -> { where('review_date <= ?', Time.now).order('RANDOM()') }
  def check_translation(user_input) 
    translated_text === user_input 
  end

  def update_review_date
    normalize_card_review_date && save
  end 

  def normalize_card_review_date
    self.review_date = Time.now + 3.days
  end

end
