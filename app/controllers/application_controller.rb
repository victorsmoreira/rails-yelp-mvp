class ApplicationController < ActionController::Base
  Rack::MiniProfiler.config.position = 'bottom-left'
end
