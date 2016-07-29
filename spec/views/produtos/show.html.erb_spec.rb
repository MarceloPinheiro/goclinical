require 'rails_helper'

RSpec.describe "produtos/show", :type => :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
  end
end
