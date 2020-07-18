class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def back_project(proj_inst)
        ProjectBacker.new(proj_inst, self)
    end

    def backed_projects
        x = []
        ProjectBacker.all.select do |proj_back|
            if proj_back.backer == self
                x << proj_back.project
            end
        end
        x
    end









end
