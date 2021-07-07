class Project
    #Backer.all 
    @@all = []
    attr_reader :title

    def initialize(title)
        @title = title
        @@all.push(self)
    end 

    def self.all
        @@all
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        temp = ProjectBacker.all.select do |project_backer|
            project_backer.project == self 
        end 
        temp.map do |project_backer|
            project_backer.backer 
        end 
    end 


end 


