require 'rails_helper'

RSpec.describe "menus/index", :type => :view do
  before(:each) do
    assign(:menus, [
      Menu.create!(
        :descricao => "Descricao",
        :link => "Link"
      ),
      Menu.create!(
        :descricao => "Descricao",
        :link => "Link"
      )
    ])
  end

  it "renders a list of menus" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
