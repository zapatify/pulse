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
 
    @teams = Team.all

    @teams.each do |team|
      Score.create(:team_id => team.id, :division_id => team.division_id, :wod1_score => rand(200..250), :wod2_score => rand(100..200), :wod3_score => rand(50..75), :wod4_score => rand(400..450), :wod5_score => rand(100..150) )
    end 

  end

  

end
