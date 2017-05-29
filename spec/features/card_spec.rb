require 'rails_helper'

describe 'review cards' do

  let(:card) { FactoryGirl.create(:card) }

  before do
    it 'Login successful' do
  fill_in :email, with: user.email
  fill_in :password, with: "mamedov"
  save_and_open_page
  click_button 'Login'
  expect(page).to have_content 'Login successful'
  end
  it 'Login failed' do
  fill_in :email, with: 'fake'
  fill_in :password, with: 'fake'  
  save_and_open_page
  click_button 'Login'
  expect(page).to have_content 'Login failed'
  end
    card.update(review_date: 1.day.ago)
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