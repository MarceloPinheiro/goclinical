require 'rails_helper'

RSpec.describe "lancamentos/edit", :type => :view do
  before(:each) do
    @lancamento = assign(:lancamento, Lancamento.create!(
      :obra => 1,
      :fornecedor => 1,
      :nota => 1,
      :valor => "",
      :status => 1
    ))
  end

  it "renders the edit lancamento form" do
    render

    assert_select "form[action=?][method=?]", lancamento_path(@lancamento), "post" do

      assert_select "input#lancamento_obra[name=?]", "lancamento[obra]"

      assert_select "input#lancamento_fornecedor[name=?]", "lancamento[fornecedor]"

      assert_select "input#lancamento_nota[name=?]", "lancamento[nota]"

      assert_select "input#lancamento_valor[name=?]", "lancamento[valor]"

      assert_select "input#lancamento_status[name=?]", "lancamento[status]"
    end
  end
end
