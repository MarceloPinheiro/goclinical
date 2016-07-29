require 'rails_helper'

RSpec.describe "menus/new", :type => :view do
  before(:each) do
    assign(:menu, Menu.new(
      :descricao => "MyString",
      :link => "MyString"
    ))
  end

  it "renders new menu form" do
    render

    assert_select "form[action=?][method=?]", menus_path, "post" do

      assert_select "input#menu_descricao[name=?]", "menu[descricao]"

      assert_select "input#menu_link[name=?]", "menu[link]"
    end
  end
end
