module UUCounter
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_filter :fill_cookie

    def fill_cookie
        set_cookie unless get_cookie
    end

    def get_cookie
        cookies[:uu_counter_token]
    end

    def get_fullpath
        request.fullpath
    end

    def set_cookie
        cookies.permanent[:uu_counter_token] = SecureRandom.hex(12)
    end
  end
end
