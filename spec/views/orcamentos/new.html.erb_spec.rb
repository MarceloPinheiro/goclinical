require 'rails_helper'

RSpec.describe "orcamentos/new", :type => :view do
  before(:each) do
    assign(:orcamento, Orcamento.new(
      :obra => 1,
      :valor => "",
      :mes => 1,
      :ano => 1
    ))
  end

  it "renders new orcamento form" do
    render

    assert_select "form[action=?][method=?]", orcamentos_path, "post" do

      assert_select "input#orcamento_obra[name=?]", "orcamento[obra]"

      assert_select "input#orcamento_valor[name=?]", "orcamento[valor]"

      assert_select "input#orcamento_mes[name=?]", "orcamento[mes]"

      assert_select "input#orcamento_ano[name=?]", "orcamento[ano]"
    end
  end
end
