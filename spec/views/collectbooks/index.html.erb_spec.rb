require 'rails_helper'

RSpec.describe "collectbooks/index", type: :view do
  before(:each) do
    assign(:collectbooks, [
      Collectbook.create!(
        title: "Title",
        author: "Author",
        price: 2.5
      ),
      Collectbook.create!(
        title: "Title",
        author: "Author",
        price: 2.5
      )
    ])
  end

  it "renders a list of collectbooks" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
  end
end
