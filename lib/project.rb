class Project

attr_reader :title 

def initialize(title)
    @title = title
end

def add_backer(backer)
    ProjectBacker.new(self, backer)
end 

def get_all_projects
    ProjectBacker.all.select do |i|
        i.project == self
    end 
end 

def backers
    self.get_all_projects.map do |i|
        i.backer
    end
end 




end 