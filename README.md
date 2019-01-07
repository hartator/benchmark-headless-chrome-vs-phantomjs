# Headless Chrome vs PhantomJS Benchmark

Original Post on Medium: [Headless Chrome vs PhantomJS Benchmark](https://medium.com/@hartator/benchmark-headless-chrome-vs-phantomjs-e7f44c6956c)

**Prerequisites:** You'll need Ruby (> 2.0), last version of PhantomJS (> 2.1.1) and last version of Chrome (> 60.0).

Then clone this repository, install the dependencies, and run the benchmarks:

```
git clone git@github.com:hartator/benchmark-headless-chrome-vs-phantomjs.git
cd benchmark-headless-chrome-vs-phantomjs
bundle install
rails test:system SAMPLE_COUNT=100 BROWSER=phantomjs
rails test:system SAMPLE_COUNT=100 BROWSER=headless_chrome
```
