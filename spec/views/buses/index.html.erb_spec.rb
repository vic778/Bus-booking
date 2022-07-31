require 'rails_helper'

RSpec.describe "buses/index", type: :view do
  before(:each) do
    assign(:buses, [
             Bus.create!(
               name: "Name",
               model: "Model",
               boarding: "Boarding",
               destination: "Destination",
               no_of_seats: "No Of Seats",
               time: "Time",
               date: "Date",
               agence: nil
             ),
             Bus.create!(
               name: "Name",
               model: "Model",
               boarding: "Boarding",
               destination: "Destination",
               no_of_seats: "No Of Seats",
               time: "Time",
               date: "Date",
               agence: nil
             )
           ])
  end

  it "renders a list of buses" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Model".to_s, count: 2
    assert_select "tr>td", text: "Boarding".to_s, count: 2
    assert_select "tr>td", text: "Destination".to_s, count: 2
    assert_select "tr>td", text: "No Of Seats".to_s, count: 2
    assert_select "tr>td", text: "Time".to_s, count: 2
    assert_select "tr>td", text: "Date".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
