Rails.application.routes.draw do
  
  get 'posts/new'
  get '/top' => 'root#top'
  post'/posts' => 'posts#create'
  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show', as: 'post'
  #/posts/1や/posts/3に該当する
  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  patch '/posts/:id' => 'posts#update', as: 'update_post'
  delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'

end
