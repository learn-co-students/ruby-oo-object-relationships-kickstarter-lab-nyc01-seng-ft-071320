class Backer

    attr_reader :name 
    
    def initialize(name)
        @name = name 
    end 


    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def get_all_projects
        ProjectBacker.all.select do |i|
            i.backer == self
        end
    end 

    def backed_projects
        self.get_all_projects.map do |i|
            i.project 
        end
    end 




end