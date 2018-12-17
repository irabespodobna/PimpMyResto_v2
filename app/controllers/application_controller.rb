class ApplicationController < ActionController::Base
  def show; end

  def after_sign_in_path_for(resource)
    if current_user.present?
      "/restos/search"
    else
      # if there is not temp list in the session proceed as normal
      super
    end
  end
end
