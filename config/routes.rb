Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end

#  - Routing, Controller, Views for Doses
# A user can add a new dose (ingredient/description pair) to an existing cocktail
# Checkout simple_form docs about f.association to easily create a select dropdown for our list of ingredients.
# GET "cocktails/42/doses/new"
# POST "cocktails/42/doses"
# A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again?
# DELETE "doses/25"
# Do we need an IngredientsController?
