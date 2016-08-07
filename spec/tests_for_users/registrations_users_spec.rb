require 'rails_helper.rb'
require 'spec_helper.rb'

feature "Register users:" do
  scenario "Register with trully input data" do
    number_of_iterations = (1..10)
    number_of_iterations.map  do |counter|
      email = (0...10).map { ('a'..'z').to_a[rand(25)] }.join
      email = "#{email}@gmail.com"
      name_of_user = (0...12).map { ('a'..'z').to_a[rand(25)] }.join.to_s
      digit_number = (0...6).map { (1..9).to_a[rand(9)] }.join.to_s
      password  = (0...13).map { ('a'..'z').to_a[rand(9)] }.join.to_s
      #Wputs ("\n email = #{email_name} \n user = #{name_of_user} \n group id = #{digit_number} \n password = #{password} ")
      visit "/"
      click_link "Register"
      expect(page).to have_content("Sign up")
      fill_in 'Email', with: "#{email}"
      fill_in 'User name', with: "#{name_of_user}"
      fill_in 'Number of group', with: "#{digit_number}"
      fill_in 'Password', with: "#{password}", exact: false
      fill_in 'Password confirmation', with: "#{password}", exact: false
      click_button "Sign up"

      expect(page).to have_content("Instructions here.")
      click_link "Logout"
      expect(page).to have_content("Log in")
    end
  end
end
