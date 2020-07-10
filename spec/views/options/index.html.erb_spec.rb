require 'rails_helper'

RSpec.describe "options/index", type: :view do
  before(:each) do
    assign(:options, [
      Option.create!(
        name: "Name"
      ),
      Option.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of options" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
