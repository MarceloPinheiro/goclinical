require 'rails_helper'

RSpec.describe "acessos/new", :type => :view do
  before(:each) do
    assign(:acesso, Acesso.new(
      :user => nil,
      :menu => nil,
      :acao => "MyString"
    ))
  end

  it "renders new acesso form" do
    render

    assert_select "form[action=?][method=?]", acessos_path, "post" do

      assert_select "input#acesso_user_id[name=?]", "acesso[user_id]"

      assert_select "input#acesso_menu_id[name=?]", "acesso[menu_id]"

      assert_select "input#acesso_acao[name=?]", "acesso[acao]"
    end
  end
end
