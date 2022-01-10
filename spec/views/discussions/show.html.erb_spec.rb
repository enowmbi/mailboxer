require 'rails_helper'

RSpec.describe "discussions/show", type: :view do
  before(:each) do
    @discussion = assign(:discussion, Discussion.create!(
      title: "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
