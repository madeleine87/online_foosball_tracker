require 'rails_helper'

RSpec.describe "rankings/edit", type: :view do
  before(:each) do
    @ranking = assign(:ranking, Ranking.create!())
  end

  it "renders the edit ranking form" do
    render

    assert_select "form[action=?][method=?]", ranking_path(@ranking), "post" do
    end
  end
end
