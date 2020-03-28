# frozen_string_literal: true

Then('Validate login {string}') do |name|
  @river_results = Pages::Result::ValidateResult.new
  name = @river_results.validate_login
  expect(name).to match(name)
end

Then('Validate failed login') do
  text = @river_results.invalid_password
  byebug
  expect(text).to match('Esa no es la contraseña correcta. Vuelve a intentarlo o solicita una nueva')
end