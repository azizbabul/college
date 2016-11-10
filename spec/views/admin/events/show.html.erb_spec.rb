require 'rails_helper'

RSpec.describe "admin/events/show", type: :view do
  before(:each) do
    @admin_event = assign(:admin_event, Admin::Event.create!(
      :name => "Name",
      :starting_time => "Starting Time",
      :ending_time => "Ending Time",
      place:"Mystring",
      icon: FactoryGirl.create(:admin_icon,:name => "az",:icon=>"icon1")

    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Starting Time/)
    expect(rendered).to match(/Ending Time/)
    expect(rendered).to match(//)
  end
end