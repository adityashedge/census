class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

private
  # Overwriting the sign_in redirect path method
  def after_sign_in_path_for(resource_or_scope)
    surveys_path
  end
private
    # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    surveys_path
  end
private
    # Overwriting the sign_up redirect path method
  def after_sign_up_path_for(resource_or_scope)
    surveys_path
  end
=begin
     private
  def after_update_path_for(resource)
    surveys_path
  end
=end
end
