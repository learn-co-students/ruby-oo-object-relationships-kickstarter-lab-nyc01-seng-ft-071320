require "pry"
class Backer
    attr_reader :name, :project, :backer

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        backed_project = ProjectBacker.new(project, self)
        backed_project
    end

    def backed_projects
        bp_array = ProjectBacker.all.select do |pb|
            pb.backer == self
        end

        bp_array.map do |pb|
           pb.backer == self
            pb.project       
        end 
    
    end

end