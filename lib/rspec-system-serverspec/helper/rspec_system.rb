module SpecInfra
  module Helper
    module RSpecSystem
      def backend(commands_object=nil)
        if ! respond_to?(:commands)
          commands_object = SpecInfra::Commands::Base.new
        end
        instance = SpecInfra::Backend::RSpecSystem.instance
        instance.set_commands(commands_object || commands)
        instance
      end
    end
  end
end
