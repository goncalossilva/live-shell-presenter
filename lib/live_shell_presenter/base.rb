require_relative 'cli'

module LiveShellPresenter
  class Base
    def initialize(*args)
      @cli = LiveShellPresenter::CLI
      @cli.parse_options
      
      @cli.show_help_and_exit if ARGV.empty?
      @cli.show_error_and_exit "Failed to read from '#{ARGV[0]}' - are you sure this is the file?" unless File.exists?(ARGV[0])
      puts "ola"
    end
  end
end
