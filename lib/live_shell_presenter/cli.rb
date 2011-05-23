require 'optparse'

module LiveShellPresenter
  class CLI
    class << self
      def parse_options
        options = {interactive: true}
        
        @opt = OptionParser.new do |opt|
          opt.banner = 'Usage: live_shell_presenter file [options]'
          opt.on('-i', '--[non-]interactive', 'Run in interactive mode.', 'Default: true') { |i| options[:interactive] = i }
          opt.parse!(ARGV)
        end
      end
      
      def show_help
        @opt.help
      end
      
      def show_error(message)
        $stderr.puts message
        show_help
      end
    end
  end
end
