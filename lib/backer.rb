
class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project_instance)
    ProjectBacker.new(project_instance, self)
  end

  def backed_projects
    #  backed_projects returns an array of projects associated with this Backer instance
   
  end

end



# "keep in mind what kind of objects you're going 
# to wind up with in the end, in your arrays. 

# ProjectBacker.all is a list of project_backer objects,
# which you're calling select on, which should filter that 
# list based on whatever criteria, but you still end up 
# with a list of project_backer objects, which aren't 
# really what you want as a final result. 
# you can use those arrays to get an array of backed projects,
# or an array of backers for a project though"  - advice from cohort lead 