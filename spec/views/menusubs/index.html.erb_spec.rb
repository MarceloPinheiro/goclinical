require 'rails_helper'

RSpec.describe "menusubs/index", :type => :view do
  before(:each) do
    assign(:menusubs, [
      Menusub.create!(
        :menu => nil,
        :descricao => "Descricao",
        :link => "Link"
      ),
      Menusub.create!(
        :menu => nil,
        :descricao => "Descricao",
        :link => "Link"
      )
    ])
  end

  it "renders a list of menusubs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
