require 'rails_helper'

RSpec.describe "book_collects/show", type: :view do
  before(:each) do
    @book_collect = assign(:book_collect, BookCollect.create!(
      title: "Title",
      author: "Author",
      price: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/2.5/)
  end
end
