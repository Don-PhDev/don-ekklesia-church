class ApplicationController < ActionController::Base
  include Pagy::Backend

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end
end
