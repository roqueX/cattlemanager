class PagesController < ApplicationController
  def consult
    @title = "Consults"
    @subtitle = "Listing total of lotes or total of cattle"
  end

  def report
    @title = "Reports"
    @subtitle = "Reports and charts of managing lotes"
  end
  
  def documentation
    @title = "Documentation"
  end

end
