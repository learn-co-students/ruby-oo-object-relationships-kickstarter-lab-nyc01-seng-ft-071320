class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self

    end

    def self.all
        @@all
    end

    def add_backer(backer_inst)
        ProjectBacker.new(self, backer_inst)
    end

    def backers
        x= []
        ProjectBacker.all.select do |proj_back|
            if proj_back.project == self
                x << proj_back.backer
            end
        end
        x
    end


end