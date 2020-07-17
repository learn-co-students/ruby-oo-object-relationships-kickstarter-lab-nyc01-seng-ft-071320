class Project
    @@all = []
    attr_accessor :title
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

    def  find_project_backer
        ProjectBacker.all.select do |instance|
            instance.project == self
        end
    end

    def backers
        find_project_backer.map {|instance| instance.backer}
    end
end