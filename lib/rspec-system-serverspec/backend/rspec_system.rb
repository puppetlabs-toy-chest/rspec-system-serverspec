require 'specinfra/backend/exec'

module Serverspec
  module Backend
    class RSpecSystem < SpecInfra::Backend::Exec
      private
      def ssh_exec!(command)
        ::RSpecSystem::Helpers.shell(command).to_hash.inject({}) do |h,(k,v)|
          k = :exit_status if k == :exit_code
        h[k] = v
        h
        end
      end
    end
  end
end
