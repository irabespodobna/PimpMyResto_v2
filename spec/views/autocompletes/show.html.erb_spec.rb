require 'rails_helper'

RSpec.describe "autocompletes/show", type: :view do
  before(:each) do
    @autocomplete = assign(:autocomplete, Autocomplete.create!(
      :address => "Address",
      :street_number => 2,
      :locality => "Locality",
      :route => "Route",
      :administrative_area_level_1 => "Administrative Area Level 1",
      :country => "Country",
      :postal_code => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Locality/)
    expect(rendered).to match(/Route/)
    expect(rendered).to match(/Administrative Area Level 1/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/3/)
  end
end
