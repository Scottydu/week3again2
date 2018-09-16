require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :starts_at => "Starts At",
      :ends_at => "Ends At",
      :venue_id => "Venue",
      :hero_image_url => "Hero Image Url",
      :description => "MyText",
      :category_id => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Starts At/)
    expect(rendered).to match(/Ends At/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/Hero Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
