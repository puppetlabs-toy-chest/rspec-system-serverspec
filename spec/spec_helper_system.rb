require 'rspec-system/spec_helper'
require 'rspec-system-serverspec/helpers'

include Serverspec::Helper::RSpecSystem
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :suite do
    shell 'echo foobar > /tmp/setupblock'
  end
end
