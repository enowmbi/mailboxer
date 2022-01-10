require 'rails_helper'

RSpec.describe "discussions/new", type: :view do
  before(:each) do
    assign(:discussion, Discussion.new(
      title: "MyString"
    ))
  end

  it "renders new discussion form" do
    render

    assert_select "form[action=?][method=?]", discussions_path, "post" do

      assert_select "input[name=?]", "discussion[title]"
    end
  end
end
