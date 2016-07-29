require 'rails_helper'

RSpec.describe "menusubs/new", :type => :view do
  before(:each) do
    assign(:menusub, Menusub.new(
      :menu => nil,
      :descricao => "MyString",
      :link => "MyString"
    ))
  end

  it "renders new menusub form" do
    render

    assert_select "form[action=?][method=?]", menusubs_path, "post" do

      assert_select "input#menusub_menu_id[name=?]", "menusub[menu_id]"

      assert_select "input#menusub_descricao[name=?]", "menusub[descricao]"

      assert_select "input#menusub_link[name=?]", "menusub[link]"
    end
  end
end
