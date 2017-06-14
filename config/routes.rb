Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'main/index'

  root to: "main#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
