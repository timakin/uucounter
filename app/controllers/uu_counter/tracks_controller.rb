require_dependency "uu_counter/application_controller"

module UuCounter
  class TracksController < ApplicationController
    def create
        uuid   = get_cookie
        path   = get_fullpath
        track = Track.find_or_initialize_by(uuid: uuid, path: path) do |t|
        	t.uuid = uuid
        	t.path = path 
        end
        if track.new_record?
	    	if track.save
	       	    render json: { 'status': 'The access track was successfully saved.' }
	        else
	            render json: { 'status': "The access track couldn't be saved."}
	        end
	   else
	   		render json: { 'status': "The access is alreadly exists." }
	   end
    end
  end
end
