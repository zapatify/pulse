class SampleController < ApplicationController
  def scores
  	@columns = Team.column_names

  end
end
