class ApplicationController < ActionController::Base

  def redirect_to(*args)
    flash.keep
    super
  end

  rescue_from CanCan::AccessDenied do |exception|
    if (request.format.json?)
      render json: { error: 'Access denied' }, status: '401'
    else
      flash.now[:alert] = 'Access denied!'
      redirect_to root_path, flash: { alert: flash[:alert] }
    end
  end
end
