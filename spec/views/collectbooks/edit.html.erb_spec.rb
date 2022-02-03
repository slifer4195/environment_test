require 'rails_helper'

RSpec.describe "collectbooks/edit", type: :view do
  before(:each) do
    @collectbook = assign(:collectbook, Collectbook.create!(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders the edit collectbook form" do
    render

    assert_select "form[action=?][method=?]", collectbook_path(@collectbook), "post" do

      assert_select "input[name=?]", "collectbook[title]"

      assert_select "input[name=?]", "collectbook[author]"

      assert_select "input[name=?]", "collectbook[price]"
    end
  end
end
