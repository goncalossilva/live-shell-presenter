module LiveShellPresenter
  class Base
    def initialize(*args)
      @cli = LiveShellPresenter::CLI
      @cli.parse_options
      
      if ARGV.empty?
        @cli.show_help
        exit
      end
    
      unless File.exists?(ARGV[0])
        @cli.show_error "Failed to read from '#{ARGV[0]}' — are you sure this is the file?"
        exit
      end
    end
  end
end
