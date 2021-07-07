require 'pry'

class Backer 
    attr_accessor :name
    def initialize (name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        backedProjects  = ProjectBacker.all.select do |ele| 
            ele.backer == self
            #binding.pry
        end
        backedProjects.map do |ele|
            ele.project
        end
    end


end