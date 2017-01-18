# require 'rails_helper.rb'

feature 'Register users:' do
  scenario 'Register with trully input data' do
    5.times do
      email = (0...10).map { ('a'..'z').to_a[rand(25)] }.join + '@gmail.com'
      name_of_user = (0...12).map { ('a'..'z').to_a[rand(25)] }.join.to_s
      digit_number = (0...6).map { (1..9).to_a[rand(9)] }.join.to_s
      password = (0...13).map { ('a'..'z').to_a[rand(9)] }.join.to_s
      visit '/'
      first(:link, 'Sign up').click
      expect(page).to have_content('Sign up')
      fill_in 'user_email', with: email.to_s
      fill_in 'User name', with: name_of_user.to_s
      fill_in 'Number of group', with: digit_number.to_s
      fill_in 'Password', with: password.to_s, match: :first
      fill_in 'Password confirmation', with: password.to_s
      click_button 'Sign up'

      expect(page).to have_content('Instructions here.')
      click_link 'Log out'
      expect(page).to have_content('Log in')
    end
  end
end
