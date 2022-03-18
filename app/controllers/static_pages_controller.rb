# class StaticPagesController < ApplicationController
#   def home
#   end
# end
class StaticPagesController < CatalogController
  # rendering the Format and Publication Year dropdown menus to the static html page
  alias_method :search_action_url, :search_catalog_url

  def home
    (@response, _) = search_service.search_results
  end

  configure_blacklight do |config|
    config.facet_fields.slice!('format', 'pub_date_ssim')
  end
  
end