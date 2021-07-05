class Backer
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projectbackers = ProjectBacker.all.select {|project_backer| project_backer.backer == self}
        projectbackers.map {|projectbacker| projectbacker.project}
    end

end