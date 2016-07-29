require 'rails_helper'

RSpec.describe "pagamentos/edit", :type => :view do
  before(:each) do
    @pagamento = assign(:pagamento, Pagamento.create!(
      :lancamento => 1,
      :valor => "9.99"
    ))
  end

  it "renders the edit pagamento form" do
    render

    assert_select "form[action=?][method=?]", pagamento_path(@pagamento), "post" do

      assert_select "input#pagamento_lancamento[name=?]", "pagamento[lancamento]"

      assert_select "input#pagamento_valor[name=?]", "pagamento[valor]"
    end
  end
end
