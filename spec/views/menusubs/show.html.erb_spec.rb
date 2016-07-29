require 'rails_helper'

RSpec.describe "menusubs/show", :type => :view do
  before(:each) do
    @menusub = assign(:menusub, Menusub.create!(
      :menu => nil,
      :descricao => "Descricao",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Link/)
  end
end
