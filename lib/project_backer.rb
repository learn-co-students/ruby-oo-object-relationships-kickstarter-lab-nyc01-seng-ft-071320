require 'pry'

class ProjectBacker

    attr_accessor :project, :backer
    @@all=[]

    def save
        @@all<<self
    end

    def self.all
        @@all
    end
    
    def self.clear_all
        self.all.clear
    end

    def initialize (project, backer)
        @project = project
        @backer=backer
       save
    end 

end