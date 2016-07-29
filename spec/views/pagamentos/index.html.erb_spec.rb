require 'rails_helper'

RSpec.describe "pagamentos/index", :type => :view do
  before(:each) do
    assign(:pagamentos, [
      Pagamento.create!(
        :lancamento => 1,
        :valor => "9.99"
      ),
      Pagamento.create!(
        :lancamento => 1,
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of pagamentos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
