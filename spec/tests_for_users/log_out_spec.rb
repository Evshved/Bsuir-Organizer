# require 'rails_helper'

# feature 'Log out' do
#   scenario 'can log out in exist account' do
#     visit '/'
#     fill_in 'Email', with: 'aaa@gmail.com'
#     fill_in 'Password', with: '112233'
#     click_button 'Log in'
#     click_link 'Logout'
#     expect(page).to have_content('Log in')
#   end
#   scenario 'log out in another exist account' do
#     visit '/'
#     fill_in 'Email', with: 'kate@gmail.com'
#     fill_in 'Password', with: '112233'
#     click_button 'Log in'

#     click_link 'Logout'
#     expect(page).to have_content('Log in')
#   end
#   scenario 'dual log out' do
#     visit '/'
#     fill_in 'Email', with: 'kate@gmail.com'
#     fill_in 'Password', with: '112233'
#     click_button 'Log in'
#     click_link 'Logout'
#     fill_in 'Email', with: 'aaa@gmail.com'
#     fill_in 'Password', with: '112233'
#     click_button 'Log in'
#     click_link 'Logout'
#     expect(page).to have_content('Log in')
#   end
# end
