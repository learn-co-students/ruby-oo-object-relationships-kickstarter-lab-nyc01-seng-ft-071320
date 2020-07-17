require 'pry'

class Backer
  attr_accessor :name
  
  @@all = []

  def initialize (name)
    @name = name
    Backer.all << self
  end
  def self.all
    @@all
  end

  def back_project (project_instance)
    ProjectBacker.new(project_instance, self)
  end

  def backed_projects
    backed_projects = []
    ProjectBacker.all.each do |project| 
      if project.backer == self
        backed_projects << project.project
      end
    end
    backed_projects
  end


end