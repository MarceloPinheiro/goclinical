require 'rails_helper'

RSpec.describe "lancamentos/new", :type => :view do
  before(:each) do
    assign(:lancamento, Lancamento.new(
      :obra => 1,
      :fornecedor => 1,
      :nota => 1,
      :valor => "",
      :status => 1
    ))
  end

  it "renders new lancamento form" do
    render

    assert_select "form[action=?][method=?]", lancamentos_path, "post" do

      assert_select "input#lancamento_obra[name=?]", "lancamento[obra]"

      assert_select "input#lancamento_fornecedor[name=?]", "lancamento[fornecedor]"

      assert_select "input#lancamento_nota[name=?]", "lancamento[nota]"

      assert_select "input#lancamento_valor[name=?]", "lancamento[valor]"

      assert_select "input#lancamento_status[name=?]", "lancamento[status]"
    end
  end
end
