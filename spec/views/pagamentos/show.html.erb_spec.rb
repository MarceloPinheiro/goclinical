require 'rails_helper'

RSpec.describe "pagamentos/show", :type => :view do
  before(:each) do
    @pagamento = assign(:pagamento, Pagamento.create!(
      :lancamento => 1,
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
  end
end
