require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  case ENV['BROWSER']
  when 'headless_chrome'
    puts "Using selenium_chrome_headless..."
    puts
    driven_by :selenium_chrome_headless
  else
    puts "Using poltergeist..."
    puts
    driven_by :poltergeist
  end
end
