FactoryBot.define do
  factory :course do
    name { "#{Faker::Games::SuperMario.location} #{Faker::Games::SuperMario.location}" }
    date_added { Time.zone.now }
    debut_game { ["Mario Kart 7", "Mario Kart 8"].sample }
    debut_system { %w[NES 3DS N64].sample }
    debut_tour { "Blah" }
    is_ranked_week_one { Faker::Boolean.boolean }
    is_ranked_week_two { Faker::Boolean.boolean }
    is_reverse { Faker::Boolean.boolean }
    is_trick { Faker::Boolean.boolean }
  end
end
