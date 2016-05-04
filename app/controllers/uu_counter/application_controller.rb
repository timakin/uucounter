module UUCounter
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def get_cookie
        request.header.cookie_jar
    end

    def get_fullpath
        request.fullpath
    end

    def set_cookie
    end
  end
end
