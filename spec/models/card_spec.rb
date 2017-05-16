require 'rails_helper'

RSpec.describe Card, :type => :model do
  it 'Time Test' do
    time = Time.now + 3.days
    user = FactoryGirl.create(:user) 
    card = FactoryGirl.create(:card,user:user)
    expect(card.review_date.strftime('%B %d, %Y')).to eq(time.strftime('%B %d, %Y'))
  end
  it 'Wrong data input' do
    user = FactoryGirl.create(:user) 
    card = FactoryGirl.create(:card,user:user)
    expect(card.check_translation('собака')).to be false
  end
  it 'True data input' do
    user = FactoryGirl.create(:user) 
    card = FactoryGirl.create(:card,user:user)
    expect(card.check_translation('кот')).to be true
  end
end
