require 'rails_helper'

describe 'User login' do
  let!(:user) { FactoryGirl.create(:user) }
  before do
    visit "user_sessions/new"
  end
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
end