class Project
    attr_reader :title, :project, :backer

    @@all = []

    def initialize(title)
        @title = title
        @@all << self 
    end

    def self.all
        @@all 
    end 

    def add_backer(backer)
        add_backer = ProjectBacker.new(self, backer)
        add_backer
    end

    def backers
       project_array = ProjectBacker.all.select do |pb|
            pb.project == self 
       end

       project_array.map do |pa|
            pa.backer
       end

    end

end