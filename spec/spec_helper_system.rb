require 'rspec-system/spec_helper'
require 'rspec-system-serverspec/helpers'

RSpec.configure do |c|
  c.before :suite do
    shell 'echo foobar > /tmp/setupblock'
  end
end
