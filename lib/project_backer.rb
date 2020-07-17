class ProjectBacker
    attr_accessor :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        save_all
    end

    def save_all
        @@all << self
    end

    def self.all
        @@all
    end
end