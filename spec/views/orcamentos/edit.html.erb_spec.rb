require 'rails_helper'

RSpec.describe "orcamentos/edit", :type => :view do
  before(:each) do
    @orcamento = assign(:orcamento, Orcamento.create!(
      :obra => 1,
      :valor => "",
      :mes => 1,
      :ano => 1
    ))
  end

  it "renders the edit orcamento form" do
    render

    assert_select "form[action=?][method=?]", orcamento_path(@orcamento), "post" do

      assert_select "input#orcamento_obra[name=?]", "orcamento[obra]"

      assert_select "input#orcamento_valor[name=?]", "orcamento[valor]"

      assert_select "input#orcamento_mes[name=?]", "orcamento[mes]"

      assert_select "input#orcamento_ano[name=?]", "orcamento[ano]"
    end
  end
end
