require 'pry'
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

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select {|pledges| pledges.backer == self}.map{|pledge| pledge.project}
        
    end
    # binding.pry
end