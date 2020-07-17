class ProjectBacker
    @@all = []
    attr_accessor :project, :backer
    def initialize(project, backer)
        @project = project
        @backer = backer
        ProjectBacker.all << self
    end

    def self.all
        @@all
    end

end