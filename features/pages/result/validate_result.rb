# frozen_string_literal: true

module Pages
  module Result
    class ValidateResult < SitePrism::Page
      element :name_login, :xpath, '//*[@id="ember100"]/div[2]'
      element :error_password, '#error-for-password'

      def validate_login
        validate_login_text        
      end

      def invalid_password
        error_password_text        
      end

      private

      def validate_login_text
        wait_until_name_login_visible
        name_login.text
      end

      def error_password_text
        wait_until_error_password_visible
        error_password.text
      end
    end
  end
end
