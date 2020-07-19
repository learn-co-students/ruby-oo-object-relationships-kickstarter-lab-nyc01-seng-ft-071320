class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def backers
        project_backers = ProjectBacker.all.filter do |uai|
            uai.project == self
        end
        project_backers.map do |uai|
            uai.backer
        end
    end

end