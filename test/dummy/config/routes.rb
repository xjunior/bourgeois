Rails.application.routes.draw do
  mount Bourgeois::Engine => "/bourgeois"
  mount RailsAdmin::Engine => "/admin"
end
