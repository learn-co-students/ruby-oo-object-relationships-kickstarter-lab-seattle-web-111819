class ProjectBacker
    #Backer.all 
    @@all = []
    attr_reader :project, :backer 

    def initialize(project, backer)
        @project = project
        @backer = backer 
        @@all.push(self)
    end 

    def self.all
        @@all
    end 
end 



