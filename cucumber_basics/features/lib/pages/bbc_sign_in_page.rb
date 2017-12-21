require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL

  SIGN_IN_PAGE_URL = 'https://www.bbc.co.uk/signin' unless const_defined?(:SIGN_IN_PAGE_URL)
  USERNAME_FIELD_ID = 'user-identifier-input' unless const_defined?(:USERNAME_FIELD_ID)
  PASSWORD_FIELD_ID = 'password-input' unless const_defined?(:PASSWORD_FIELD_ID)
  WRONG_USERNAME_ERROR_ID = 'form-message-username' unless const_defined?(:WRONG_USERNAME_ERROR_ID)
  WRONG_PASSWORD_ERROR_TEXT = 'Sorry, we can’t find an account with that username. If you\'re over 13, try your email address instead or ' unless const_defined?(:WRONG_PASSWORD_ERROR_TEXT)
  WRONG_PASSWORD_ERROR_ID = 'form-message-password' unless const_defined?(:WRONG_PASSWORD_ERROR_ID)
  REGISTER_LINK_TEXT = 'Register now' unless const_defined?(:REGISTER_LINK_TEXT)
  SUBMIT_BUTTON_ID = 'submit-button' unless const_defined?(:SUBMIT_BUTTON_ID)

  def visit_register_page
    visit(SIGN_IN_PAGE_URL)
  end

  def username_field
    find_field(:id, USERNAME_FIELD_ID)
  end

  def fill_in_username(username)
    fill_in(USERNAME_FIELD_ID, with: username)
  end

  def password_field
    find_field(:id, PASSWORD_FIELD_ID)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def sign_in_button
    find_button(SUBMIT_BUTTON_ID)
  end

  def click_sign_in_button
    sign_in_button.click
  end

  def register_link
    find_link(REGISTER_LINK_TEXT)
  end

  def click_register_link
    click_link(REGISTER_LINK_TEXT)
  end

  def incorrect_username_text
    find(:id, WRONG_USERNAME_ERROR_ID).text
  end

  def incorrect_password_text
    find(:id, WRONG_PASSWORD_ERROR_ID).text
  end

end
