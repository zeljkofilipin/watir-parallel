# before all
environment = :remote # :local or :remote
username = "" # get it from https://saucelabs.com/account
api_key = "" # get it from https://saucelabs.com/account

require "bundler/setup"
require "watir-webdriver"

def browser_for(environment, username, api_key)
  if environment == :remote
    caps = Selenium::WebDriver::Remote::Capabilities.firefox
    caps.version = "11"
    caps.platform = :VISTA
    caps[:name] = environment

    require "selenium/webdriver/remote/http/persistent" # :http_client
    Watir::Browser.new(
      :remote,
      :http_client => Selenium::WebDriver::Remote::Http::Persistent.new,
      :url => "http://#{username}:#{api_key}@ondemand.saucelabs.com:80/wd/hub",
      :desired_capabilities => caps)
  else
    Watir::Browser.new :firefox
  end
end

browser = browser_for(environment, username, api_key)

Before do
  @browser = browser
end

at_exit do
  browser.close
end
