require 'optparse'

module LiveShellPresenter
  class CLI
    class << self
      def parse_options
        options = {interactive: true}
        
        @opt = OptionParser.new do |opt|
          opt.banner = 'Usage: live_shell_presenter file [options]'
          opt.on('-i', '--[non-]interactive', 'Run in interactive mode.', 'Default: read the documentation') { |i| options[:interactive] = i }
          opt.parse!(ARGV)
        end
      end
      
      def show_help_and_exit
        show_help
        exit
      end
      
      def show_help
        puts @opt.help
      end
      
      def show_error_and_exit(message)
        show_error(message)
        exit
      end
      
      def show_error(message)
        $stderr.puts "Error: #{message}"
        show_help
      end
    end
  end
end
