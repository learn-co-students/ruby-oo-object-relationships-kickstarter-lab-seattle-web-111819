class Backer
    attr_reader :name
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
        ProjectBacker.all.select do|bp| 
            bp.backer == self
            end.map{|proj| proj.project}

    end


end

