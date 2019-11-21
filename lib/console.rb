require_relative 'backer'
require_relative 'project'
require_relative 'project_back'

B1 = Backer.new("Natali")
B2 = Backer.new("Mengs")


P1 = Project.new("Cup")
P2 = Project.new("Apple")
P3 = Project.new("Laptop")
P4 = Project.new("Kickstart")

ProjectBacker.new(B1, P1)