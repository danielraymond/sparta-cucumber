Given("I access the bbc login page") do
  bbc_homepage.visit_home_page
  bbc_homepage.click_sign_in_link
end

And("I input incorrect username details") do
  bbc_sign_in_page.fill_in_username('coding-sue')
end

And("I input incorrect password details") do
  bbc_sign_in_page.fill_in_password('jfbsjahbsahj')
end

When("I try to login") do
  bbc_sign_in_page.click_sign_in_button
end

Then("I receive an error for not finding the account") do
  bbc_sign_in_page.incorrect_username_text
end
