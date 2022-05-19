class Project
  attr_reader :id
  attr_accessor :title

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  # def title 
  #   project_title = DB.exec("SELECT title FROM projects;")
  # end

  def ==(project_to_compare)
    self.title() == project_to_compare.title()
  end


end
