require_dependency "uu_counter/application_controller"

module UUCounter
  class TracksController < ApplicationController
    def create
        uuid   = get_cookie
        path   = get_fullpath
        track  = Track.new(uuid: uuid, path: path)
        result = track.record
        render json: result
    end
  end
end
