class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def wisest
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first
  
    render({ :template => "director_templates/eldest.html.erb"})
  end
 
  def spryest
    @youngest = Director.order({ :dob => :desc }).first
  
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def director_details
    the_id = params.fetch("an_id")

    @the_director = Director.where({ :id => the_id }).first

    render({ :template => "director_templates/details.html.erb"})
  end

end