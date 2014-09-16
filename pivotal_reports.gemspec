# coding: utf-8
require 'rake'

$:.unshift File.expand_path("../lib", __FILE__)

require 'pivotal_reports/version'

Gem::Specification.new do |s|
  s.name        = 'pivotal_reports'
  s.version     = PivotalReports::VERSION
  s.date        = '2014-09-15'
  s.summary     = "Will generate reports from a Pivotal account"
  s.description = "tool to create the reports needed by a manager"
  s.authors     = ["Athir Nuaimi"]
  s.email       = ['anuaimi@devfoundry.com']
  s.files       = ["lib/pivotal_reports.rb"]
  s.homepage    = 'http://rubygems.org/gems/pivotal_reports'
  s.license     = 'GPL v3'

  s.files       = `git ls-files`.split($/)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'tracker_api'
end
