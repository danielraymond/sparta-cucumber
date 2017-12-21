require 'capybara/dsl'

class BbcSignUpPage
 include Capybara::DSL

 DAY_FIELD_ID = 'day-input' unless const_defined?(:DAY_FIELD_ID)
 MONTH_FIELD_ID = 'month-input' unless const_defined?(:MONTH_FIELD_ID)
 YEAR_FIELD_ID = 'year-input' unless const_defined?(:YEAR_FIELD_ID)
 SUBMIT_BUTTON_ID = 'submit-button' unless const_defined?(:SUBMIT_BUTTON_ID)
 EMAIL_FIELD_ID = 'user-identifier-input' unless const_defined?(:EMAIL_FIELD_ID)
 PASSWORD_FIELD_ID = 'password-input' unless const_defined?(:PASSWORD_FIELD_ID)
 POSTCODE_FIELD_ID = 'postcode-input' unless const_defined?(:POSTCODE_FIELD_ID)
 ALREADY_USED_EMAIL_ERROR_ID = 'form-message-email' unless const_defined?(:ALREADY_USED_EMAIL_ERROR_ID)
 INCORRECT_PASSWORD_ERROR_ID = 'form-message-password' unless const_defined?(:INCORRECT_PASSWORD_ERROR_ID)
 SIGN_IN_MESSAGE_SUCCESSFUL = 'h1 span' unless const_defined?(:SIGN_IN_MESSAGE_SUCCESSFUL)

  def day_field
    find_field(DAY_FIELD_ID)
  end

  def fill_in_day(day)
    fill_in(DAY_FIELD_ID, with: day)
  end

  def month_field
    find_field(MONTH_FIELD_ID)
  end

  def fill_in_month(month)
    fill_in(MONTH_FIELD_ID, with: month)
  end

  def day_field
    find_field(YEAR_FIELD_ID)
  end

  def fill_in_year(year)
    fill_in(YEAR_FIELD_ID, with: year)
  end

  def sign_up_button
    find_button(SUBMIT_BUTTON_ID)
  end

  def click_sign_up_button
    sign_up_button.click
  end

  def find_email_field
    find_field(EMAIL_FIELD_ID)
  end

  def fill_in_email(email)
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def find_password_field
    find_field(PASSWORD_FIELD_ID)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def find_postcode_field
    find_field(POSTCODE_FIELD_ID)
  end

  def fill_in_postcode(postcode)
    fill_in(POSTCODE_FIELD_ID, with: postcode)
  end

  def select_gender
    select('Female', from: 'gender-input')
  end

  def select_opt(opt)
    find(:xpath, ".//label[@for='#{opt}']/div/div").click
  end

  def find_register_button
    find_button(SUBMIT_BUTTON_ID)
  end

  def click_register_button
    find_register_button.click
  end

  def find_email_error
    find(:id, ALREADY_USED_EMAIL_ERROR_ID).text
  end

  def find_password_error
    find(:id, INCORRECT_PASSWORD_ERROR_ID).text
  end

  def successfull_sign_up_message_text
    find(SIGN_IN_MESSAGE_SUCCESSFUL).text
  end

end
