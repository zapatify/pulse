json.extract! score, :id, :team_id, :division_id, :wod1_score, :wod1_place, :wod2_score, :wod2_place, :wod3_score, :wod3_place, :wod4_score, :wod4_place, :wod5_score, :wod5_place, :overall_score, :overall_place, :created_at, :updated_at
json.url score_url(score, format: :json)