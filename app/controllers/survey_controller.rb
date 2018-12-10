class SurveyController < ApplicationController
  def survey
    @foodstyle_categories = FoodstyleCategory.all
    @meal_categories = MealCategory.all
    @budget_categories = BudgetCategory.all
    @frequency_categories = FrequencyCategory.all
    @distance_categories = DistanceCategory.all
    @the_restos = Resto.all

    # @client = GooglePlaces::Client.new(ENV['GOOGLE_PLACES_KEY'])
    # @spots = @client.spots(-33.8670522, 151.1957362, :types => ['restaurant','food'])
    # @names = @spots.collect { |spot| spot.name }
    # @print_restos = "spots #{@names} "

  end

  def index
    @surveys = Survey.all
  end

  def create
    Survey.create foodstyle_category_id: params[:foodstyle_category_id], resto_id: params[:resto_id],  budget_category_id: params[:budget_category_id], distance_category_id: params[:distance_category_id], frequency_category_id: params[:frequency_category_id]
    puts "/restos/#{params[:id]}"
    redirect_to new_user_registration_path
  end

end
