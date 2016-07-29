require 'rails_helper'

RSpec.describe "acessos/edit", :type => :view do
  before(:each) do
    @acesso = assign(:acesso, Acesso.create!(
      :user => nil,
      :menu => nil,
      :acao => "MyString"
    ))
  end

  it "renders the edit acesso form" do
    render

    assert_select "form[action=?][method=?]", acesso_path(@acesso), "post" do

      assert_select "input#acesso_user_id[name=?]", "acesso[user_id]"

      assert_select "input#acesso_menu_id[name=?]", "acesso[menu_id]"

      assert_select "input#acesso_acao[name=?]", "acesso[acao]"
    end
  end
end
