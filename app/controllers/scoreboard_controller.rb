class ScoreboardController < ApplicationController
  def main
    @columns = Score.column_names

    if params[:division_id] != nil
      @scores = Score.where(division_id: params[:division_id])
      @division = Division.find(params[:division_id])
    else
      if Division.exists?
        @division = Division.first
        @scores = Score.where(division_id: @division.id)
	    else
	    	redirect_to divisions_path
	    end
    end
  end
end
