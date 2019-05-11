class ApplicationController < ActionController::Base
  before_action :basic

  def current_user
    @current_user ||= User.last
      p @current_user
  end

  helper_method :current_user

  private

  def basic
    authenticate_or_request_with_http_basic do |name, password|
      name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
