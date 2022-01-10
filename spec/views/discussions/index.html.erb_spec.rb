require 'rails_helper'

RSpec.describe "discussions/index", type: :view do
  before(:each) do
    assign(:discussions, [
      Discussion.create!(
        title: "Title"
      ),
      Discussion.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of discussions" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
