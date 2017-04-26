class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user_can?(action, object)
    false
  end

  def current_admin_can?(action, object)
    true
  end
end
