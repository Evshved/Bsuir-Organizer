require 'rails_helper'

feature 'Log in' do

  scenario 'can log in exist account' do
    visit '/'
    fill_in 'Email', with: "aaa@gmail.com"
    fill_in 'Password', with: "112233"
    click_button 'Log in'

    expect(page).to have_content("Instructions here.")
  end

end
