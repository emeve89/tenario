Dir[Rails.root.join('lib/constraint/*').to_s].each do |constraint|
  require constraint
end

Rails.application.routes.draw do
  resources :posts
  constraints Constraint::Slugged do
  end
  constraints Constraint::Main do
    resources :blogs
    devise_for :users
  end
end
