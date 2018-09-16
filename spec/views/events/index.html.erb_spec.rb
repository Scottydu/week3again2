require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :starts_at => "Starts At",
        :ends_at => "Ends At",
        :venue_id => "Venue",
        :hero_image_url => "Hero Image Url",
        :description => "MyText",
        :category_id => nil
      ),
      Event.create!(
        :starts_at => "Starts At",
        :ends_at => "Ends At",
        :venue_id => "Venue",
        :hero_image_url => "Hero Image Url",
        :description => "MyText",
        :category_id => nil
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Starts At".to_s, :count => 2
    assert_select "tr>td", :text => "Ends At".to_s, :count => 2
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "Hero Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
