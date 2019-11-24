require_relative 'backer'
require_relative 'project'
require_relative 'project_backer'
require 'pry'
b1 = Backer.new("Nicole")

p1 = Project.new("Popsockets")

back_project(p1)

add_backer(b1)