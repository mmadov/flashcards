require 'rails_helper'

describe 'review cards' do

  let(:card) { FactoryGirl.create(:card) }

  before do
    login(card.user.email)
    card.update(review_date: 3.days.ago)
    visit root_path
  end

  it 'correct translation' do
    fill_in :user_translation, with: card.translated_text
    click_button 'Check'
    expect(page).to have_content 'Правильно'
  end

  it 'incorrect translation' do
    fill_in :user_translation, with: 'fake'
    click_button 'Check'
    expect(page).to have_content 'Не правильно'
  end
end
