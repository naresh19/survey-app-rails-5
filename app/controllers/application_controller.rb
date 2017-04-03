class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :clear_thread_context
  before_filter :set_thread_context

  def clear_thread_context
    Thread.current[:current_user] = nil
  end
  def set_thread_context
    return if ['confirmations', 'sessions', 'registrations', 'passwords'].include? self.controller_name

    if user_signed_in?
      User.current_user= current_user
    end

  end
end
