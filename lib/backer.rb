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
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        sub = ProjectBacker.all.select {|project_backer| project_backer.backer == self}
        sub.map {|project_backer| project_backer.project}
    end
end