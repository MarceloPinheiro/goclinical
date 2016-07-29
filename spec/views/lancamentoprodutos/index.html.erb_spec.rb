require 'rails_helper'

RSpec.describe "lancamentoprodutos/index", :type => :view do
  before(:each) do
    assign(:lancamentoprodutos, [
      Lancamentoproduto.create!(
        :lancamento => 1,
        :produto => 2,
        :quantidade => "9.99",
        :valor => "9.99"
      ),
      Lancamentoproduto.create!(
        :lancamento => 1,
        :produto => 2,
        :quantidade => "9.99",
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of lancamentoprodutos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
