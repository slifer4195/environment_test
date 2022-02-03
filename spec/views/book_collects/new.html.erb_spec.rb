require 'rails_helper'

RSpec.describe "book_collects/new", type: :view do
  before(:each) do
    assign(:book_collect, BookCollect.new(
      title: "MyString",
      author: "MyString",
      price: 1.5
    ))
  end

  it "renders new book_collect form" do
    render

    assert_select "form[action=?][method=?]", book_collects_path, "post" do

      assert_select "input[name=?]", "book_collect[title]"

      assert_select "input[name=?]", "book_collect[author]"

      assert_select "input[name=?]", "book_collect[price]"
    end
  end
end
