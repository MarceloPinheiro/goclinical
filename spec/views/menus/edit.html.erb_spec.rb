require 'rails_helper'

RSpec.describe "menus/edit", :type => :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(
      :descricao => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit menu form" do
    render

    assert_select "form[action=?][method=?]", menu_path(@menu), "post" do

      assert_select "input#menu_descricao[name=?]", "menu[descricao]"

      assert_select "input#menu_link[name=?]", "menu[link]"
    end
  end
end
