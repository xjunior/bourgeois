require_dependency 'rails_admin'

Rails.application.routes.draw do
  mount Bourgeois::Engine => "/bourgeois"
  mount RailsAdmin::Engine => '/admin', as: :rails_admin
end
