class SurveyController < ApplicationController
  def survey
    @foodstyle_categories = FoodstyleCategory.all
  end

  def index
    @surveys = Survey.all
  end

  def create
    Survey.create foodstyle_category_id: params[:foodstyle_category_id]
    redirect_to "/survey/index"
  end

end
