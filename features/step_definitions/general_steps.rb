# frozen_string_literal: true

Given('User is logging into an account') do
  @home_page = Pages::Home::Index.new
  @home_page.go_home_page
end

When('User enter email {string}') do |email|
  @home_page.send_email(email)
end

And('User enter password {string}') do |password|
  @home_page.send_password(password)
end
