class RecordValidator < ActiveModel::Validator
  def validate(record)
    if record.original_text == record.translated_text
      record.errors[:base] << "This person is evil"
    end
  end
end
class Card < ApplicationRecord
before_save :normalize_card_review_date
validates_with RecordValidator

  def normalize_card_review_date
      self.review_date = Time.now+ 3.days
  end


end
