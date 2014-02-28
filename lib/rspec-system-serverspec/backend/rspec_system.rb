require 'specinfra/backend/exec'

module SpecInfra
  module Backend
    class RSpecSystem < SpecInfra::Backend::Exec
      def run_command(cmd, opt={})
        cmd = build_command(cmd)
        cmd = add_pre_command(cmd)
        ret = ssh_exec!(cmd)

        if @example
          @example.metadata[:command] = cmd
          @example.metadata[:stdout]  = ret[:stdout]
        end

        CommandResult.new ret
      end

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
