require 'pry'

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.map do |backed_project|
            if backed_project.backer == self
                backed_project.project
            end
        end.compact
    end

end