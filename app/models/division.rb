class Division < ActiveRecord::Base
	has_many :team, :dependent => :delete_all
end
