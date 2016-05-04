module UUCounter
  class Track < ActiveRecord::Base
    attr_accessor :uuid, :path

    validates :uuid, presence: true
    validates :path, presence: true

    def record
        past_track = Track.find(uuid: self.uuid, path: self.path)
        if past_track
            return { 'status': 'Already the user accessed to the page.' }
        end
        if self.save
            return { 'status': 'The access track was successfully saved.' }
        else
            return { 'status': "The access track couldn't be saved." }
        end
    end
  end
end
