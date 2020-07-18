require 'pry'

class Project

    attr_accessor :title
    @@all=[]

    def initialize (title)
        @title=title
        @@all<<self
    end

    def add_backer (backer)
        cash_money = ProjectBacker.new(self, backer)
    end

    def backers
        x = ProjectBacker.all.select{|pj|pj.project==self}
        y= x.collect{|pj|pj.backer}
    end

end
