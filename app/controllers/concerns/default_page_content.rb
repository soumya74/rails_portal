module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @seo_keywords = "Soumya Sengupta IIT Delhi"
    @page_title = "My Portfolio | Home"

  end

end
