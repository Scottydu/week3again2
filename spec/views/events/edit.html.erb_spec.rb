require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :starts_at => "MyString",
      :ends_at => "MyString",
      :venue_id => "MyString",
      :hero_image_url => "MyString",
      :description => "MyText",
      :category_id => nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[starts_at]"

      assert_select "input[name=?]", "event[ends_at]"

      assert_select "input[name=?]", "event[venue_id]"

      assert_select "input[name=?]", "event[hero_image_url]"

      assert_select "textarea[name=?]", "event[description]"

      assert_select "input[name=?]", "event[category_id_id]"
    end
  end
end
