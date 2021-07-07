class Backer
    attr_accessor :name
    @@all = []

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
        ProjectBacker.all.select do |b|
            b.backer == self

        end
    end

    def backed_projects
        find_project_backers.map do |backed_p|
            backed_p.project
        end
    end

end