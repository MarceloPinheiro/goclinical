require 'rails_helper'

RSpec.describe "produtos/index", :type => :view do
  before(:each) do
    assign(:produtos, [
      Produto.create!(
        :descricao => "Descricao"
      ),
      Produto.create!(
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of produtos" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
