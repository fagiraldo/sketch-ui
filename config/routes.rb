# -*- encoding : utf-8 -*-
SketchUi::Application.routes.draw do
  root 'home#index'

  resource :projects, only: [:create]
  get "projects/:id" => "projects#show"
  get "projects/:project_id/sketches/:id" => "sketches#data"
  post "projects/:project_id/sketches/add" => "sketches#add"
  post "projects/:project_id/sketches/:id" => "sketches#save"
end
