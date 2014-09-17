
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

  class Report
    def initialize( api_key = nil)
      # if key nil, try and load from .pivotal_reports file
      # else save key
      @client = TrackerApi::Client.new( token: @api_key)

      @me = @client.me
      @projects = @me.projects
    end

    def get_team
      # go through each project and create a list of all team members
      # want the id as name or initals may not be unique
      # project.memberships.first.person.id

    end


    def list_projects

      team_members = Hash.new

      # create list of people in each project
      projects = @client.projects
      projects.each {|project|
        members = project.memberships
        members.each {|member|
          puts member.person.name
          team_members[member.person.id] = member.person
        }
      }

      # current iterations
      projects.each {|project|
        current_iteration_number = project.current_iteration_number
          current_iteration = project.iterations[current_iteration_number-1]
          stories = current_iteration.stories
          puts "#{project.name} (#{current_iteration_number}) #{current_iteration.start} #{current_iteration.finish} - #{stories.count}"

          # find for given person
          stories.each {|story|
            story.current_state
            owner_id = story.owned_by_id
            owner = owner_id ? team_members[owner_id] : nil
            name = owner ? owner.name : "unassigned"
            puts "#{story.name} (#{story.current_state} - #{story.estimate}) #{name}"
          }
          puts ""

          # get stories for a person
          
      };nil


    end
  end

  
  # summary report for each team member

  # mark eveything in current iteration as 'planned'

end



