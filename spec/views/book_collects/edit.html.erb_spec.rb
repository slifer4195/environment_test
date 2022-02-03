require 'rails_helper'

RSpec.describe "book_collects/edit", type: :view do
  before(:each) do
    @book_collect = assign(:book_collect, BookCollect.create!(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders the edit book_collect form" do
    render

    assert_select "form[action=?][method=?]", book_collect_path(@book_collect), "post" do

      assert_select "input[name=?]", "book_collect[title]"

      assert_select "input[name=?]", "book_collect[author]"

      assert_select "input[name=?]", "book_collect[price]"
    end
  end
end
