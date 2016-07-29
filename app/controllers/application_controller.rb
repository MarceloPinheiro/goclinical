class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_filter :authenticate_user!
rescue_from CanCan::AccessDenied do |exception|
  flash[:alert] = "Acesso Negado! Você não tem autorização para este acesso."
  redirect_to root_path
end

  def self.permission
    return name = self.name.gsub('Controller','').singularize.split('::').last.constantize.name rescue nil
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end

  def load_permissions
    @current_permissions = Acesso.where('user_id=?',current_user.id).collect{|i| [i.submenu.modulo,i.acao]}
  end

  layout 'flatly'
end
