require 'rails_helper'

RSpec.describe "collectbooks/new", type: :view do
  before(:each) do
    assign(:collectbook, Collectbook.new(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders new collectbook form" do
    render

    assert_select "form[action=?][method=?]", collectbooks_path, "post" do

      assert_select "input[name=?]", "collectbook[title]"

      assert_select "input[name=?]", "collectbook[author]"

      assert_select "input[name=?]", "collectbook[price]"
    end
  end
end
