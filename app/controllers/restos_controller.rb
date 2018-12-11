class RestosController < ApplicationController
  def index
    @the_restos = Resto.all
  end

  def create
    Resto.create name: params[:name], googleid: params[:googleid], address: params[:address]
  end

  def show
    @resto = Resto.find(params[:id])
    @the_restos = Resto.all
    @foodstyle_categories = FoodstyleCategory.all

    # To count a number of votes
    @surveys = @resto.surveys
    @num_votes = @surveys.size

    # To count a number of votes for vegan/veggie/without_gluten options
    vegan_id = 1
    veggie_id = 2
    without_gluten_id = 3

    @num_vegan_votes = 0
    @num_veggie_votes = 0
    @num_gluten_votes = 0

    @surveys.each do |survey|
      if survey.foodstyle_category_id == vegan_id
        @num_vegan_votes += 1
      elsif survey.foodstyle_category_id == veggie_id
        @num_veggie_votes += 1
      elsif survey.foodstyle_category_id == without_gluten_id
        @num_gluten_votes += 1
      end
    end
  end
end
