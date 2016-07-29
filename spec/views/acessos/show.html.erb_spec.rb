require 'rails_helper'

RSpec.describe "acessos/show", :type => :view do
  before(:each) do
    @acesso = assign(:acesso, Acesso.create!(
      :user => nil,
      :menu => nil,
      :acao => "Acao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Acao/)
  end
end
