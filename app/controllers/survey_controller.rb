class SurveyController < ApplicationController
  def survey
    @foodstyle_categories = FoodstyleCategory.all
    @the_restos = Resto.all

    @client = GooglePlaces::Client.new(ENV['GOOGLE_PLACES_KEY'])
    @spots = @client.spots(-33.8670522, 151.1957362, :types => ['restaurant','food'])
    @names = @spots.collect { |spot| spot.name }
    @print_restos = "spots #{@names} "

  end

  def index
    @surveys = Survey.all
  end

  def create
    Survey.create foodstyle_category_id: params[:foodstyle_category_id], resto_id: params[:resto_id]
    puts "/restos/#{params[:id]}"
    redirect_to new_user_registration_path
  end

end
