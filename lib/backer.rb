class Backer
    attr_accessor :name

    def initialize (name)
    @name = name
    end

    def back_project (project_instance)
        ProjectBacker.new(project_instance, self)
    end

    def backed_projects
        backers_projects = []
        ProjectBacker.all.each do |project|
            if project.backer == self
                backers_projects << project.project
            end
        end
        backers_projects
    end


    
end
