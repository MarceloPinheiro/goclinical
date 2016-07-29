require 'rails_helper'

RSpec.describe "orcamentos/index", :type => :view do
  before(:each) do
    assign(:orcamentos, [
      Orcamento.create!(
        :obra => 1,
        :valor => "",
        :mes => 2,
        :ano => 3
      ),
      Orcamento.create!(
        :obra => 1,
        :valor => "",
        :mes => 2,
        :ano => 3
      )
    ])
  end

  it "renders a list of orcamentos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
