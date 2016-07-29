require 'rails_helper'

RSpec.describe "lancamentoprodutos/new", :type => :view do
  before(:each) do
    assign(:lancamentoproduto, Lancamentoproduto.new(
      :lancamento => 1,
      :produto => 1,
      :quantidade => "9.99",
      :valor => "9.99"
    ))
  end

  it "renders new lancamentoproduto form" do
    render

    assert_select "form[action=?][method=?]", lancamentoprodutos_path, "post" do

      assert_select "input#lancamentoproduto_lancamento[name=?]", "lancamentoproduto[lancamento]"

      assert_select "input#lancamentoproduto_produto[name=?]", "lancamentoproduto[produto]"

      assert_select "input#lancamentoproduto_quantidade[name=?]", "lancamentoproduto[quantidade]"

      assert_select "input#lancamentoproduto_valor[name=?]", "lancamentoproduto[valor]"
    end
  end
end
