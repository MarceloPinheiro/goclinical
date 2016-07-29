require 'rails_helper'

RSpec.describe "lancamentoprodutos/show", :type => :view do
  before(:each) do
    @lancamentoproduto = assign(:lancamentoproduto, Lancamentoproduto.create!(
      :lancamento => 1,
      :produto => 2,
      :quantidade => "9.99",
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
