require 'rails_helper'

RSpec.describe "rankings/show", type: :view do
  before(:each) do
    @ranking = assign(:ranking, Ranking.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
