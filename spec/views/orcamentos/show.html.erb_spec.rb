require 'rails_helper'

RSpec.describe "orcamentos/show", :type => :view do
  before(:each) do
    @orcamento = assign(:orcamento, Orcamento.create!(
      :obra => 1,
      :valor => "",
      :mes => 2,
      :ano => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
