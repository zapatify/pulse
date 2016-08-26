class ScoreboardController < ApplicationController
  def main
    if params[:division_id] != nil
      @teams = Team.where(division_id: params[:division_id])
      @division = Division.find(params[:division_id])
    else
      if Division.exists?
        @division = Division.first
        @teams = Team.where(division_id: @division.id)
	    else
	    	redirect_to divisions_path
	    end
    end
  end
end
