require 'pry'
class Project
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    ProjectBacker.all.select do |project_backer|
      pb = project_backer
    end
    pb.collect do |backer|
      backer.self
    end
  end

end

