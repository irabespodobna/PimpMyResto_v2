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
    if current_user.nil?
      session[:survey_data] = params
      session[:resto_id] = params[:resto_id]
      redirect_to new_user_registration_path
      return
    end
    # find surveys from the same user for the same restaurant
    candidates = Survey.where(resto_id: params[:resto_id], user_id: current_user.id)
    if candidates.first
      flash[:alert] = "Vous avez déjà répondu au questionnaire pour ce restaurant!"
      redirect_to "/restos/#{params[:resto_id]}"
      return
    end
    survey = Survey.new foodstyle_category_id: params[:foodstyle_category_id], resto_id: params[:resto_id],  budget_category_id: params[:budget_category_id], distance_category_id: params[:distance_category_id], frequency_category_id: params[:frequency_category_id], user_id:  current_user.id
    if survey.save
      flash[:success] = "Votre participation à bien été prise en compte!"
    else
      flash[:alert] = "Il y a un problème, votre participation n'a pas été prise en compte"
    end
    redirect_to "/restos/#{params[:resto_id]}"
  end

end
