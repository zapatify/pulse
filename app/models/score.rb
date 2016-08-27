class Score < ActiveRecord::Base
	belongs_to :team
	belongs_to :division
end
