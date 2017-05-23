require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.register_driver :selenium do |app|
	caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "start-maximized" ]})
	  		Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
end
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10