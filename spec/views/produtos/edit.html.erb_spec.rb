require 'rails_helper'

RSpec.describe "produtos/edit", :type => :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :descricao => "MyString"
    ))
  end

  it "renders the edit produto form" do
    render

    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do

      assert_select "input#produto_descricao[name=?]", "produto[descricao]"
    end
  end
end
