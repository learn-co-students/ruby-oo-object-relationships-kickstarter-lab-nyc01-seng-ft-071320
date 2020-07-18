require 'pry'

class Backer

    attr_accessor :name
    @@all=[]

    def initialize (name)
        @name=name
        @@all<<self
    end

    def back_project(project)
        back_the_project = ProjectBacker.new(project, self)
    end
    
    def backed_projects
        # x= ProjectBacker.all
        # binding.pry
        x = ProjectBacker.all.select{|pj|pj.backer==self}
        y= x.collect{|pj|pj.project}
        # binding.pry
    end

end