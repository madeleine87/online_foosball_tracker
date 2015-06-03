RSpec.describe Player, type: :model do
	it "cant't create two players with the same email adress" do
		FactoryGirl.create(:player_B, email: "email1@test.pl")
		player = FactoryGirl.build(:player_A, email: "email1@test.pl")
		expect(player.valid?).to be false
	end
end

RSpec.describe Player, type: :model do
	it "can add two players with different email adress" do
		playerA = FactoryGirl.create(:player_A)
		playerB = FactoryGirl.create(:player_B)
		expect(playerA.valid?).to be true
		expect(playerB.valid?).to be true
	end
end

RSpec.describe Player, type: :model do
  it "can't create player with password length less than 8" do
  	player = FactoryGirl.build(:player_A, password: "dom")
  	expect(player.valid?).to be false
	end
end
