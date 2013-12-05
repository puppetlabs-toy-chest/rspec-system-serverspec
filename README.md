# rspec-system-serverspec

`rspec-system-serverspec` is a [Serverspec](http://serverspec.org/) plugin for [rspec-system](https://rubygems.org/gems/rspec-system). The purpose is to provide the ability to use Serverspec matchers in rspec-system tests.

## Quick Start

* Have a module that is configured to use rspec-system
* Add the `rspec-system-serverspec` gem to your module's `Gemfile`
* Add the following line to your `spec/spec_helper_system.rb` file:

```ruby
require 'rspec-system-serverspec/helpers'
```
