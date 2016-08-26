class ScoreboardController < ApplicationController
  def main
    if params[:division_id] != nil
      @teams = Team.where(division_id: params[:division_id])
      @division = Division.find(params[:division_id])
    else
      @division = Division.first
      @teams = Team.where(division_id: @division.id)
    end
  end
end
