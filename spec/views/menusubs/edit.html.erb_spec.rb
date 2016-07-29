require 'rails_helper'

RSpec.describe "menusubs/edit", :type => :view do
  before(:each) do
    @menusub = assign(:menusub, Menusub.create!(
      :menu => nil,
      :descricao => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit menusub form" do
    render

    assert_select "form[action=?][method=?]", menusub_path(@menusub), "post" do

      assert_select "input#menusub_menu_id[name=?]", "menusub[menu_id]"

      assert_select "input#menusub_descricao[name=?]", "menusub[descricao]"

      assert_select "input#menusub_link[name=?]", "menusub[link]"
    end
  end
end
