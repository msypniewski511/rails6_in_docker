# require 'selenium/webdriver'

Capybara.register_driver :selenium_chrome_in_container do |app|
  Capybara::Selenium::Driver.new(
    app, 
    browser: :remote, 
    options: Selenium::WebDriver::Options.chrome, 
    url: 'http://selenium_chrome:4444/wd/hub'
  )
end

Capybara.register_driver :headless_selenium_chrome_in_container do |app|
  Capybara::Selenium::Driver.new(
    app, 
    browser: :remote, 
    options: Selenium::WebDriver::Options.chrome, 
    url: 'http://selenium_chrome:4444/wd/hub'
  )
end