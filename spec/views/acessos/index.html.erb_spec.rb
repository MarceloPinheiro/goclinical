require 'rails_helper'

RSpec.describe "acessos/index", :type => :view do
  before(:each) do
    assign(:acessos, [
      Acesso.create!(
        :user => nil,
        :menu => nil,
        :acao => "Acao"
      ),
      Acesso.create!(
        :user => nil,
        :menu => nil,
        :acao => "Acao"
      )
    ])
  end

  it "renders a list of acessos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Acao".to_s, :count => 2
  end
end
