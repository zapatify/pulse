namespace :teams do
  desc "TODO"
  task load: :environment do
  	require 'csv'

    CSV.foreach('public/teams.csv', :headers => true) do |row|
      Team.create!(row.to_hash)
    end
    puts "All teams were loaded"
    
  end

end
