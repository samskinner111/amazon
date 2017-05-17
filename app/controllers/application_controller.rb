class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :load_nav_items

  def load_nav_items
    @categories = Category.all
    @brands = Product.pluck(:brand).sort.uniq
    @cart_count = LineItem.count
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end