require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  def visit_register_page
    visit('register')
  end

  def enter_DOB(day, month, year)
    fill_in('Day', with: day)
    fill_in('Month', with: month)
    fill_in('Year', with: year)
  end

  def click_next_button
    click_button('submit-button')
  end

  def fill_in_email(email)
    fill_in('Email', with: email)
  end

  def fill_in_password(password)
    fill_in('Password', with: password)
  end

  def fill_in_postcode(postcode)
    fill_in('Postcode', with: postcode)

  end

  def password_field
    find_field('Password')
  end

  def postcode_field
    find_field('Postcode')
  end

  def check_error_message
    find(:css, 'p.form-message__text').text
  end

end
