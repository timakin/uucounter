module UuCounter
  class Track < ActiveRecord::Base
    attr_accessor :uuid, :path

    validates :uuid, presence: true
    validates :path, presence: true
  end
end
