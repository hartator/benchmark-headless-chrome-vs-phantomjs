# Headless Chrome vs PhantomJS Benchmark

Original Post on Medium: [Headless Chrome vs PhantomJS Benchmark](https://medium.com/@hartator/benchmark-headless-chrome-vs-phantomjs-e7f44c6956c)

**Prerequisites:** You'll need Ruby (> 2.0), last version of PhantomJS (> 2.1.1) and last version of Chrome (> 60.0).

#### Install requirements and run

install `phantomjs` globally

```SHELL
npm i -g phantomjs
```

install `chromedriver`



you can pick the version from this [page](http://chromedriver.storage.googleapis.com/index.html) and copy/paste to a location that is in your path

for mac, you can use

```SHELL
brew cask install chromedriver
```

install/change ruby version in the projects folder (using rbenv/rvm)
for rbenv
```SHELL
rbenv install 2.3.3
rbenv local 2.3.3
gem install bundler

git clone https://github.com/hartator/benchmark-headless-chrome-vs-phantomjs
cd benchmark-headless-chrome-vs-phantomjs
bundle install --path .gems
bundle exec rails test:system SAMPLE_COUNT=100 BROWSER=phantomjs
bundle exec rails test:system SAMPLE_COUNT=100 BROWSER=headless_chrome
```

