require 'pry'

class Project 
    attr_accessor :title
    def initialize (title)
        @title = title
    end
    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        backed  = ProjectBacker.all.select do |ele| 
            ele.project == self
            #binding.pry
        end
        backed.map do |ele|
            ele.backer
        end
    end
    

end