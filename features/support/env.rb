require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium#_chrome
  config.app_host = "https://www.submarino.com.br/"
  config.default_max_wait_time = 10
end

# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :firefox) #internet_explorer
# end

# Capybara.default_driver = :selenium
# Capybara.default_max_wait_time = 10
