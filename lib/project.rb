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
    @backer = ProjectBacker.new(self, backer)
  end

  def backers
     #that returns all _backers_ associated with this Project instance.

    ProjectBacker.all.select do |bp| bp.project == self
    end.map {|project| project.backer}
  end
end