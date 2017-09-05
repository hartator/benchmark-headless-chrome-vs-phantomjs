# Headless Chrome vs PhantomJS Benchmark

Original Post on Medium: [Headless Chrome vs PhantomJS Benchmark](https://medium.com/@hartator/benchmark-headless-chrome-vs-phantomjs-e7f44c6956c)

This repositoty is to allow you to run the benchmark of the above post yourself.

**Prerequisites:** You'll need Ruby (> 2.0), last version of PhantomJS (> 2.1.1) and last version of Chrome (> 60.0).

Then clone this repository, install the dependencies, and run the benchmarks:

```
git clone git@github.com:hartator/benchmark-headless-chrome-vs-phantomjs.git
cd benchmark-headless-chrome-vs-phantomjs
bundle install
rails server
rails benchmark:phantomjs
rails benchmark:headless_chrome
```

Feel free to modify this file to customize what is benchmarked: [`lib/tasks/benchmark.rake`](https://github.com/hartator/benchmark-headless-chrome-vs-phantomjs/blob/master/lib/tasks/benchmark.rake)
