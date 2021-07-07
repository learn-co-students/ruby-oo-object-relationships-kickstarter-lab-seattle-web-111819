require 'pry'
class Project
    attr_accessor :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
        # binding.pry
    end

    def self.all 
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select {|pledges| pledges.project == self}.map {|pledge| pledge.backer}
    end

end