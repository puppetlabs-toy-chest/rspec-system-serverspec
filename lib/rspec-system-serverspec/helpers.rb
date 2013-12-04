require 'serverspec'
require 'specinfra'
require 'rspec-system'
require 'rspec-system-serverspec/backend/rspec_system'
require 'rspec-system-serverspec/helper/rspec_system'

include SpecInfra::Helper::RSpecSystem
include SpecInfra::Helper::DetectOS
