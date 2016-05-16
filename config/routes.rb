Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  
  get 'home/index'
  get 'home/qanda'
  get 'home/login'
##  get 'home/ques_update2'
  get 'home/meeting_board'
  get 'home/board_write'
  get 'home/question'
  get 'ques_destroy/:post_id' => 'home#ques_destroy'
  get 'ques_update2/:post_id' => 'home#ques_update2'
  
  
  get 'home/update_view/:post_id' => 'home#update_view'
  post 'home/reply_write/:post_id' => 'home#reply_write'
  
  # 신청 현황관련 routes!!
  get 'post_destroy/:post_id' => 'home#post_destroy'
  get 'post_update/:post_id' => 'home#post_update'  
  post 'siljae_update/:post_id' => 'home#post_siljae_update'
  
  # QnA 댓글 관련 routes !!
  post 'home/reply_write' => 'home#reply_write' 
  
  # QnA 관련 routes !!
  post 'realupdate/:post_id' => 'home#real_ques_update'
  post 'home/ques_write'
  
  # 신청 현황 글쓰기 !!
  post 'home/writeacting'

  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
