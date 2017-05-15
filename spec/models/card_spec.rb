require 'rails_helper'

RSpec.describe Card do
  it 'Time Test' do
    time = Time.now + 3.days
    card = FactoryGirl.create(:card)
    expect(card.review_date.strftime('%B %d, %Y')).to eq(time.strftime('%B %d, %Y'))
  end
  it 'Wrong data input' do
    card = FactoryGirl.create(:card)
    expect(card.check_translation('собака')).to be false
  end
  it 'True data input' do
    card = FactoryGirl.create(:card)
    expect(card.check_translation('кот')).to be true
  end
end
