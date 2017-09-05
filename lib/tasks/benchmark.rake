URL_TO_TEST = "http://localhost:3000"
TEXT_TO_VERIFY_PROPER_LOAD = "Yay! You’re on Rails!"
BENCHMARK_ITERATIONS = 1000

namespace :benchmark do
  task :phantomjs do
    puts "== Starting PhantomJS Driver =="
    driver = Selenium::WebDriver.for :phantomjs
    puts "Benchmarking (#{BENCHMARK_ITERATIONS} times):"
    time = Benchmark.measure do
      BENCHMARK_ITERATIONS.times do 
        driver.navigate.to URL_TO_TEST
        unless driver.find_element(tag_name: "body").text.include? TEXT_TO_VERIFY_PROPER_LOAD
          raise "Page Not Properly Loaded"
        end
        print '.'
      end
    end
    puts "\nTime taken: #{time}"
    puts "== Quitting PhantomJS Driver =="
    driver.quit
  end
end