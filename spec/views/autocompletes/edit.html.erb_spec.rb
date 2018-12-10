require 'rails_helper'

RSpec.describe "autocompletes/edit", type: :view do
  before(:each) do
    @autocomplete = assign(:autocomplete, Autocomplete.create!(
      :address => "MyString",
      :street_number => 1,
      :locality => "MyString",
      :route => "MyString",
      :administrative_area_level_1 => "MyString",
      :country => "MyString",
      :postal_code => 1
    ))
  end

  it "renders the edit autocomplete form" do
    render

    assert_select "form[action=?][method=?]", autocomplete_path(@autocomplete), "post" do

      assert_select "input[name=?]", "autocomplete[address]"

      assert_select "input[name=?]", "autocomplete[street_number]"

      assert_select "input[name=?]", "autocomplete[locality]"

      assert_select "input[name=?]", "autocomplete[route]"

      assert_select "input[name=?]", "autocomplete[administrative_area_level_1]"

      assert_select "input[name=?]", "autocomplete[country]"

      assert_select "input[name=?]", "autocomplete[postal_code]"
    end
  end
end
