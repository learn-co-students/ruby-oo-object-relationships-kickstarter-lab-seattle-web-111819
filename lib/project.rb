class Project
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end
    
    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select do |bp| 
            bp.project == self
            end.map{|proj| proj.backer}

    end
end
