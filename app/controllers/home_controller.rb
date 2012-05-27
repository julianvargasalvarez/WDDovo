class HomeController < ApplicationController
  def index
    @flickr_key= ApiKey.where(site_name:"flickr").first.api_key
    @_500px_key= ApiKey.where(site_name:"500px").first.api_key
    @soundcloud_key= ApiKey.where(site_name:"soundcloud").first.api_key
  end
end
