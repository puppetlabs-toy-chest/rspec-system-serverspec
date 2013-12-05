require 'serverspec'
require 'specinfra'
require 'rspec-system'
require 'rspec-system-serverspec/backend/rspec_system'
require 'rspec-system-serverspec/helper/rspec_system'

include SpecInfra::Helper::RSpecSystem
include SpecInfra::Helper::DetectOS

module Serverspec::Helper::RSpecSystem
  def self.included(base)
    # Deprecated in 2.0.0
    warn "[DEPRECATED] Serverspec::Helper::RSpecSystem is deprecated and should no longer be included. See the README for information."
  end
end
