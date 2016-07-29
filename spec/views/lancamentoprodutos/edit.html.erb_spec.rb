require 'rails_helper'

RSpec.describe "lancamentoprodutos/edit", :type => :view do
  before(:each) do
    @lancamentoproduto = assign(:lancamentoproduto, Lancamentoproduto.create!(
      :lancamento => 1,
      :produto => 1,
      :quantidade => "9.99",
      :valor => "9.99"
    ))
  end

  it "renders the edit lancamentoproduto form" do
    render

    assert_select "form[action=?][method=?]", lancamentoproduto_path(@lancamentoproduto), "post" do

      assert_select "input#lancamentoproduto_lancamento[name=?]", "lancamentoproduto[lancamento]"

      assert_select "input#lancamentoproduto_produto[name=?]", "lancamentoproduto[produto]"

      assert_select "input#lancamentoproduto_quantidade[name=?]", "lancamentoproduto[quantidade]"

      assert_select "input#lancamentoproduto_valor[name=?]", "lancamentoproduto[valor]"
    end
  end
end
