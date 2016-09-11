Rails.application.routes.draw do
	scope module: "uu_counter" do
    post "/uuc_tracks", to: "tracks#create"
  end
end
