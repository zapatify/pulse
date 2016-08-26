namespace :initial do
  desc "TODO"
  task load_fake_scorecard: :environment do
  	places = [1..50]

  	54.times do
      athlete = Scorecard.new 
      athlete.athlete = Faker::Name.name
      athlete.wod1 = rand(1..54)
      athlete.wod2 = rand(1..54)
      athlete.wod3 = rand(1..54)
      athlete.wod4 = rand(1..54)
      athlete.wod5 = rand(1..54)
      athlete.overall = rand(1..54)
      athlete.save
  	end

    Division.create(:name => "Masters", :description => "Masters")
    Division.create(:name => "Scaled", :description => "Scaled")
    Division.create(:name => "Rx", :description => "Rx")

    Team.create(:team_name => "Power Punch")



  end

  

end
