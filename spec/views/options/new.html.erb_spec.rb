require 'rails_helper'

RSpec.describe "options/new", type: :view do
  before(:each) do
    assign(:option, Option.new(
      name: "MyString"
    ))
  end

  it "renders new option form" do
    render

    assert_select "form[action=?][method=?]", options_path, "post" do

      assert_select "input[name=?]", "option[name]"
    end
  end
end
