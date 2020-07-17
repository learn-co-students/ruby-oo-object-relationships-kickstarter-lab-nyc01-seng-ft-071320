class Backer
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        Backer.all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def find_project_backers
        ProjectBacker.all.select do |instance|
            instance.backer == self
        end
    end

    def backed_projects
        find_project_backers.map {|instance| instance.project}
    end
end