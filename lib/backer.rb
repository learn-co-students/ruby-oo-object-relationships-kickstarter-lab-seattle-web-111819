require 'pry'
class Backer
@@all = []
attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def back_project(project)
  @project = ProjectBacker.new(project, self)
end

def backed_projects
  
  #returns all the projects associated with this backer
  # backed_projects=ProjectBacker.all.select {|bp| bp.backer == self}
  # backed_projects.map { |backer| backer.project  }
  
  ProjectBacker.all.select do |bp| 
      bp.backer == self
    end.map { |backer| backer.project  }
end

end