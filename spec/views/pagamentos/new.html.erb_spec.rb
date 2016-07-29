require 'rails_helper'

RSpec.describe "pagamentos/new", :type => :view do
  before(:each) do
    assign(:pagamento, Pagamento.new(
      :lancamento => 1,
      :valor => "9.99"
    ))
  end

  it "renders new pagamento form" do
    render

    assert_select "form[action=?][method=?]", pagamentos_path, "post" do

      assert_select "input#pagamento_lancamento[name=?]", "pagamento[lancamento]"

      assert_select "input#pagamento_valor[name=?]", "pagamento[valor]"
    end
  end
end
