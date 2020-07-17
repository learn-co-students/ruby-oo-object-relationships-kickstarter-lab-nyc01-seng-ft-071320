class Project
    attr_accessor :title

    def initialize (title)
        @title = title
    end

    def add_backer (backer_instance)
        ProjectBacker.new(self, backer_instance)
    end

    def backers
        backers_array = []
        ProjectBacker.all.each do |backer|
            if backer.project == self
                backers_array << backer.backer
            end
        end
        backers_array
    end

end
