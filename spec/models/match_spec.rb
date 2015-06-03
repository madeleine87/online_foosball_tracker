
RSpec.describe Match, type: :model do
  it "can't create match with result player A less than zero" do
  	match = FactoryGirl.build(:match_C, result_player_A: -1)

  	expect(match.valid?).to be false
	end
end

RSpec.describe Match, type: :model do
  it "can't create match with result player B less than zero" do
  	match = FactoryGirl.build(:match_C, result_player_B: -1)

  	expect(match.valid?).to be false
	end
end

RSpec.describe Match, type: :model do
  it "One of player has to have 10 points" do
  	match = FactoryGirl.build(:match_A, result_player_A: 5, result_player_B: 5)

  	expect(match.valid?).to be false
	end
end

RSpec.describe Match, type: :model do
  it "Two players can't have 10 points" do
  	match = FactoryGirl.build(:match_A, result_player_A: 10, result_player_B: 10)

  	expect(match.valid?).to be false
	end
end

RSpec.describe Match, type: :model do
  it "The propor match" do
  	match = FactoryGirl.build(:match_A)

  	expect(match.valid?).to be true
	end
end
