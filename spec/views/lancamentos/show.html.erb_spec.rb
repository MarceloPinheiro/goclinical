require 'rails_helper'

RSpec.describe "lancamentos/show", :type => :view do
  before(:each) do
    @lancamento = assign(:lancamento, Lancamento.create!(
      :obra => 1,
      :fornecedor => 2,
      :nota => 3,
      :valor => "",
      :status => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(/4/)
  end
end
