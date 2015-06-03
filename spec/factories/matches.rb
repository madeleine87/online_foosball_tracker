FactoryGirl.define do
  factory :match_A, class: Match  do
    player_A factory: :player_A
    player_B factory: :player_B
    result_player_A 10
    result_player_B 5
    date Time.now
  end

  factory :match_B, class: Match  do
    player_A factory: :player_B
    player_B factory: :player_A
    result_player_A 10
    result_player_B 5
    date Time.now
  end

  factory :match_C, class: Match  do
    player_A factory: :player_C
    player_B factory: :player_A
    result_player_A 10
    result_player_B 5
    date Time.now
  end
end
