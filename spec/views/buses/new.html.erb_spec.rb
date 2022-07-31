require 'rails_helper'

RSpec.describe "buses/new", type: :view do
  before(:each) do
    assign(:bus, Bus.new(
                   name: "MyString",
                   model: "MyString",
                   boarding: "MyString",
                   destination: "MyString",
                   no_of_seats: "MyString",
                   time: "MyString",
                   date: "MyString",
                   agence: nil
                 ))
  end

  it "renders new bus form" do
    render

    assert_select "form[action=?][method=?]", buses_path, "post" do
      assert_select "input[name=?]", "bus[name]"

      assert_select "input[name=?]", "bus[model]"

      assert_select "input[name=?]", "bus[boarding]"

      assert_select "input[name=?]", "bus[destination]"

      assert_select "input[name=?]", "bus[no_of_seats]"

      assert_select "input[name=?]", "bus[time]"

      assert_select "input[name=?]", "bus[date]"

      assert_select "input[name=?]", "bus[agence_id]"
    end
  end
end
