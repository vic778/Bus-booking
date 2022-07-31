require 'rails_helper'

RSpec.describe "buses/show", type: :view do
  before(:each) do
    @bus = assign(:bus, Bus.create!(
                          name: "Name",
                          model: "Model",
                          boarding: "Boarding",
                          destination: "Destination",
                          no_of_seats: "No Of Seats",
                          time: "Time",
                          date: "Date",
                          agence: nil
                        ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Boarding/)
    expect(rendered).to match(/Destination/)
    expect(rendered).to match(/No Of Seats/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(//)
  end
end
