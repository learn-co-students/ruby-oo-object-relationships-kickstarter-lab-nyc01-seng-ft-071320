require 'pry'

class ProjectBacker 
    attr_reader :project, :backer
    @@all = []

    def initialize (project, backer)
        # @project = Project.new(title)
        # @backer = Backer.new(name)
        @project = project
        @backer = backer

        @@all << self
    end
    def self.all
        @@all
    end


end