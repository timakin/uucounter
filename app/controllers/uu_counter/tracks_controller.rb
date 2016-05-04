require_dependency "uu_counter/application_controller"

module UUCounter
  class TracksController < ApplicationController
    def create
        #TODO: not ppp
        uuid = get_cookie
        path = get_fullpath
        track = UUCounter::PageViewTrack.new(uuid: uuid, path: path)
        if track.save
            return success_json
        else
            return false_json
        end
    end
  end
end
