class ScoreboardController < ApplicationController
  def main
  	@athletes = Scorecard.all
  end
end
