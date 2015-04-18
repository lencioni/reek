Dir["#{File.dirname(__FILE__)}/smells/*.rb"].each do |file|
  require_relative "smells/#{File.basename(file, '.rb')}"
end

module Reek
  #
  # This module contains the various smell detectors.
  #
  module Smells
  end
end
