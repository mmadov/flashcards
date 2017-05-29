require 'rails_helper'

RSpec.describe User, type: :model do

  it 'Time Test' do
    card = FactoryGirl.create(:card)
    expect(card.review_date.strftime('%B %d, %Y')).to eq(3.days.from_now.strftime('%B %d, %Y'))
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
