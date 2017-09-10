require 'uri'

class DashboardController < ApplicationController
  def index
    @cdn_uri = URI(Figaro.env.CDN_BASE)
    if Rails.env.development?
      @cdn_uri = 'http://localhost:3001'
    end
  end
end
