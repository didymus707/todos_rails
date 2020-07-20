class ApplicationController < ActionController::Base
  def authenticate
    if !signed_in?
      redirect_to new_sessions_path
    end
  end

  def signed_in?
    session[:current_email].present?
  end
end
