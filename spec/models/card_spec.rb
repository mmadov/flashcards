require "rails_helper"

RSpec.describe Card, :type => :model do
  it 'Time Test' do
    time = Time.now + 3.days
    card = Card.create!(original_text: 'durch',translated_text: 'test')
    expect(card.review_date.strftime('%B %d, %Y')).to eq(time.strftime('%B %d, %Y'))
  end
  it 'Wrong data input' do
    time = Time.now + 3.days
    card = Card.create!(original_text: 'cat', translated_text: 'кот')
    expect(card.check_translation('собака')).to be false
  end
  it 'True data input' do
    time = Time.now + 3.days
    card = Card.create!(original_text: 'cat', translated_text: 'кот')
    expect(card.check_translation('кот')).to be true
  end
end
