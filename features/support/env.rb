require 'capybara'
require 'capybara/cucumber'

#Capybara.configure do |config|
#    config.default_driver = :selenium_chrome
#end

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox) #internet_explorer
end
  
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10