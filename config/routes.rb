HackerMeetings::Application.routes.draw do

  authenticated :user do
    root 'home#index'
  end
  root 'welcome#index', as: :anonymous_root

  devise_for :users, :controllers => {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

end
