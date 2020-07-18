class Project
    attr_accessor :title
    @@all= []

    def initialize(title)
        @title = title
        Project.all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def find_project_backers
        ProjectBacker.all.select do |b|
            b.project == self
        end
    end

    def backers
        find_project_backers.map do |backed_p|
            backed_p.backer
        end
    end

end