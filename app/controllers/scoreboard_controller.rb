class ScoreboardController < ApplicationController
  def main
  	@athletes = Scorecard.all
  end

  def team
  	if params[:division_id] != nil
      @teams = Team.where(division_id: params[:division_id])
  	else
      @teams = Team.all
  	end

  	@division = Division.find(params[:division_id])

  	
  end
end
