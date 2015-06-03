RSpec.describe Player, type: :model do
	it "cant't create two players with the same email adress" do
		FactoryGirl.create(:player_B, email: "email1@test.pl")
		player = FactoryGirl.build(:player_A, email: "email1@test.pl")
		expect(player.valid?).to be false
	end
end
