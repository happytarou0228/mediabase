Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'main/index'

  root to: "main#index"
  namespace 'kanri' do
    resources :articles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
