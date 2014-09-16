
__LIB_DIR__ = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift __LIB_DIR__ unless $LOAD_PATH.include?(__LIB_DIR__)

require 'tracker_api'

require 'pivotal_reports/version'

module PivotalReports

  @@pivotal_api_key
  @@tracker

  def self.set_api_key( api_key)
    @@pivotal_api_key
    @@tracker = TrackerApi::Client.new(token: api_key)
  end

  class CLI
    def self.hi
      puts "Well, hi there!"
    end
  end

  class Info
  # get list of projects
    # get list of team members for a set of projects
  
  end

  class Reports
  
  end

  
  # summary report for each team member

  # mark eveything in current iteration as 'planned'

end



