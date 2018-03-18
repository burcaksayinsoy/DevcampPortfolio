class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelistConcern
  include CurrentUserConcern
  include SetPageDefaultsConcern

  before_action :set_copyright

  def set_copyright
    @copyright = BSSViewTool::Renderer.copyright 'Burçak Sayınsoy', 'All rights reserved.'
  end
end

module BSSViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end
