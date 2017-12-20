Given("I access the bbc signup page") do
  bbc_homepage.visit_home_page
  bbc_homepage.click_sign_in_link
  bbc_sign_in_page.click_register_link
end

And("I input the correct date of birth") do
  bbc_sign_up_page.fill_in_day('26')
  bbc_sign_up_page.fill_in_month('04')
  bbc_sign_up_page.fill_in_year('1996')
  bbc_sign_up_page.click_sign_up_button
end

And("I input a valid email address") do
  bbc_sign_up_page.fill_in_email("danray#{rand(100000)}@email.com")
end

And("I input a valid password") do
  bbc_sign_up_page.fill_in_password('password123')
end

And("I input a valid postcode") do
  bbc_sign_up_page.fill_in_postcode('TW10 6TF')
end

And("I select a gender") do
  bbc_sign_up_page.select_gender
end

And("I select whether I want email updates") do
  bbc_sign_up_page.select_opt('optOut')
end

When("I try to signup") do
  bbc_sign_up_page.click_sign_up_button
end

Then("I sign up successfully") do
  bbc_sign_up_page.successfull_sign_up_message_text
end

And("I input an email address already in use") do
  bbc_sign_up_page.fill_in_email("draymond@spartaglobal.com")
end

Then("I get the correct error message") do
  bbc_sign_up_page.find_email_error
end
