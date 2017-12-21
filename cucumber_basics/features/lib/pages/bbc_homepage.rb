require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  # Page Objects
  HOMEPAGE_URL = 'https://www.bbc.co.uk/' unless const_defined?(:HOMEPAGE_URL)
  SIGN_IN_LINK_ID = '#idcta-link' unless const_defined?(:SIGN_IN_LINK_ID)

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def sign_in_link
    find(SIGN_IN_LINK_ID)
  end

  def click_sign_in_link
    sign_in_link.click
  end

end
