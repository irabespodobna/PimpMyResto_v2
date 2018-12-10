require 'rails_helper'

RSpec.describe "autocompletes/index", type: :view do
  before(:each) do
    assign(:autocompletes, [
      Autocomplete.create!(
        :address => "Address",
        :street_number => 2,
        :locality => "Locality",
        :route => "Route",
        :administrative_area_level_1 => "Administrative Area Level 1",
        :country => "Country",
        :postal_code => 3
      ),
      Autocomplete.create!(
        :address => "Address",
        :street_number => 2,
        :locality => "Locality",
        :route => "Route",
        :administrative_area_level_1 => "Administrative Area Level 1",
        :country => "Country",
        :postal_code => 3
      )
    ])
  end

  it "renders a list of autocompletes" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Locality".to_s, :count => 2
    assert_select "tr>td", :text => "Route".to_s, :count => 2
    assert_select "tr>td", :text => "Administrative Area Level 1".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
