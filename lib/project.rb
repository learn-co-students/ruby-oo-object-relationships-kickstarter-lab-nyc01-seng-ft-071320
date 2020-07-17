require 'pry'

class Project
  attr_accessor :title
  
  @@all = []

  def initialize (title)
    @title = title
    Project.all << self
  end
  def self.all
    @@all
  end

  def add_backer (backer_instance)
    ProjectBacker.new(self, backer_instance)
  end

  def backers
    backers_array = []
    ProjectBacker.all.each do |backer| 
      #binding.pry
      if backer.project == self
        backers_array << backer.backer
      end
    end
    backers_array
  end


end