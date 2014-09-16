
__LIB_DIR__ = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift __LIB_DIR__ unless $LOAD_PATH.include?(__LIB_DIR__)

require 'tracker_api'

require 'pivotal_reports/version'

module PivotalReports

  class CLI
    def self.hi
      puts "Well, hi there!"
    end
  end

end

