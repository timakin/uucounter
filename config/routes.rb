Rails.application.routes.draw do
    mount UUCounter::Engine => "/uu_counter"
end

UUCounter::Engine.routes.draw do
    scope module: "uu_counter" do
        resources :track, only: [:create]
    end
end
