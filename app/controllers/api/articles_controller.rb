class Api::ArticlesController < ApplicationController

  def index
    @articles = HTTP.headers("X-Api-Key" => Rails.application.credentials.news_api[:api_key]).get("https://newsapi.org/v2/everything?q=#{params[:search]}").parse
    render json: @articles
  end

end
