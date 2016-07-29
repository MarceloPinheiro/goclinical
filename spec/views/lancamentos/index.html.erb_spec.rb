require 'rails_helper'

RSpec.describe "lancamentos/index", :type => :view do
  before(:each) do
    assign(:lancamentos, [
      Lancamento.create!(
        :obra => 1,
        :fornecedor => 2,
        :nota => 3,
        :valor => "",
        :status => 4
      ),
      Lancamento.create!(
        :obra => 1,
        :fornecedor => 2,
        :nota => 3,
        :valor => "",
        :status => 4
      )
    ])
  end

  it "renders a list of lancamentos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
