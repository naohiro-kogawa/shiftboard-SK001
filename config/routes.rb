Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
      get 'attendances/edit_one_month' # 勤怠編集ページへのroute。
      patch 'attendances/update_one_month' # 勤怠編集ページ：まとめて更新です。
    end
    resources :attendances, only: :update # updateアクション以外のルーティングを制限:updateのみ使うってこと。
  end
end