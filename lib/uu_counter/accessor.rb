module UuCounter
    module Accessor
        module_function

        def get_count(path)
            tracks = Track.find_by_path(path)
            return tracks.length
        end
    end
end
