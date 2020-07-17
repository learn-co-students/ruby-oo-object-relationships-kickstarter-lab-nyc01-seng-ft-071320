require 'pry'
require_relative "backer.rb"
require_relative "project_backer.rb"

class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select do |project_backer|
            project_backer.project == self    
            end.map do |project|
                project.backer
        end
    end
    #binding.pry
end