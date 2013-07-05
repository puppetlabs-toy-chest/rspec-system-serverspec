# rspec-system-serverspec

`rspec-system-serverspec` is a [Serverspec](http://serverspec.org/) plugin for [rspec-system](https://rubygems.org/gems/rspec-system). The purpose is to provide the ability to use Serverspec matchers in rspec-system tests.

## Quick Start

* Have a module that is configured to use rspec-system
* `gem install serverspec`
* Add the `serverspec` and `rspec-system-serverspec` gems to your module's `Gemfile`
* Add these lines to your `spec/spec_helper_system.rb` file:

```ruby
require 'rspec-system-serverspec/helpers'
include Serverspec::Helper::RSpecSystem
include Serverspec::Helper::DetectOS
```
