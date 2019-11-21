class Backer
    attr_accessor :name 
    
    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        @project = ProjectBacker.new(project, self)
    end 

    def backed_projects
        bprojects = ProjectBacker.all.select{|pbacker| pbacker.backer == self}
        bprojects.map {|pbacker| pbacker.project}
    end 




end 