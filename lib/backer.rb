require 'pry'
class Backer
    attr_reader :name
    
    def initialize(name)
        @name = name       
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.filter do |ua_instance| 
        ua_instance.backer == self # filter the projects by self(backer)
        end
        project_backers.map do |ua2|
            ua2.project
        end
    end
end