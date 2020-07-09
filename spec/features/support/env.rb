require 'capybara-screenshot/cucumber'
require 'capybara/cucumber'
require 'webdrivers'

Capybara.configure do |config|
  config.default_driver    = :selenium_chrome_headless
  config.javascript_driver = :selenium_chrome_headless

  # Rails以外のアプリを試験する場合や、環境も含めたE2Eテストを実施する場合、下記の２行指定する必要がある
  # (直接Railsアプリを試験する場合は下記の２行は不要)
  config.app               = nil   
  config.run_server        = false
end
