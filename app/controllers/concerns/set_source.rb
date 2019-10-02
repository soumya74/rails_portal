module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source_url
  end

  def set_source_url
    session[:source] = params[:q] if params[:q]
  end
end
