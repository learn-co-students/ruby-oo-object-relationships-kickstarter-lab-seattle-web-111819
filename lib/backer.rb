class Backer
    #Backer.all 
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end 

    def self.all
        @@all
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        temp = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self 
        end 
        temp.map do |project_backer|
            project_backer.project
        end 
    end 



end 