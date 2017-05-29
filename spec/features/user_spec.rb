require 'rails_helper'

describe 'User login' do
  let!(:user) { FactoryGirl.create(:user) }

  before do
    visit login_path
  end

  it 'Login successful' do
    fill_in :email, with: user.email
    fill_in :password, with: "mamedov"
    click_button 'Login'
    expect(page).to have_content 'Login successful'
  end

  it 'Login failed' do
    fill_in :email, with: 'fake'
    fill_in :password, with: 'fake'
    click_button 'Login'
    expect(page).to have_content 'Login failed'
  end
end
