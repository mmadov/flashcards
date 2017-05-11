require "rails_helper"

RSpec.describe Card, :type => :model do
  it 'Равные значения' do
      time = Time.now + 3.days
      card = Card.create!(original_text: 'durch',translated_text: 'durch')
      expect(card.review_date.strftime('%B %d, %Y')).to eq(time.strftime('%B %d, %Y'))
  end
    it 'С пробелом значения' do
      time = Time.now + 3.days
      card = Card.create!(original_text: 'durch',translated_text: ' durcH')
      expect(card.review_date.strftime('%B %d, %Y')).to eq(time.strftime('%B %d, %Y'))
  end
    it 'Разные значение' do
      time = Time.now + 3.days
      card = Card.create!(original_text: 'durch',translated_text: 'by')
      expect(card.review_date.strftime('%B %d, %Y')).to eq(time.strftime('%B %d, %Y'))
  end
end
