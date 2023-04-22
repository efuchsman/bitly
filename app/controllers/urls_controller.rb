class UrlsController < ApplicationController
  def show
    year = params[:year]
    @results = Url.clicks_per_year(year)
  end
end
