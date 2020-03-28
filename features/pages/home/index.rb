# frozen_string_literal: true

module Pages
  module Home
    class Index < SitePrism::Page
      element :email_field, '#username'
      element :button_submit, :xpath, '//*[@id="app__container"]/main/div/form/div[4]'
      element :password_field, '#password'

      def go_home_page
        visit 'https://www.linkedin.com/login?'
        wait_until_email_field_visible
      end

      def send_email(email)
        email_input(email)
      end

      def send_password(password)
        password_input(password)
        button_submit_click
      end

      private

      def email_input(email)
        wait_until_email_field_visible
        email_field.set email
      end

      def password_input(password)
        wait_until_password_field_visible
        password_field.click
        password_field.set password        
      end

      def button_submit_click
        sleep 1
        wait_until_button_submit_visible
        button_submit.click
      end
    end
  end
end
