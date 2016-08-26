namespace :initial do
  desc "TODO"
  task load_fake_data: :environment do
  	places = [1..50]

    Division.create(:name => "Masters", :description => "Masters")
    Division.create(:name => "Scaled", :description => "Scaled")
    Division.create(:name => "Rx", :description => "Rx")

    60.times do
      Team.create(:team_name => Faker::App.name, :team_description => Faker::Hipster.sentence(3), :division_id => rand(1..3) )
    end 

    100.times do
      scorecd = Scorecard.new 
      scorecd.athlete = Faker::Name.name
      scorecd.wod1 = rand(1..54)
      scorecd.wod2 = rand(1..54)
      scorecd.wod3 = rand(1..54)
      scorecd.wod4 = rand(1..54)
      scorecd.wod5 = rand(1..54)
      scorecd.overall = rand(1..54)
      scorecd.save
    end

  end

  

end
