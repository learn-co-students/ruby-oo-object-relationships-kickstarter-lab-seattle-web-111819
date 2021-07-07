class Project
    @@all = []
    attr_reader :title

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
        sub = ProjectBacker.all.select {|project_backer| project_backer.project == self}
        sub.map {|project_backer| project_backer.backer}
    end

end