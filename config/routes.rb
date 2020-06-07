# typed: strict
Rails.application.routes.draw do
  devise_for :users, path_names: {
    sign_in: "sign-in",
    sign_out: "sign-out",
  }

  root to: "pages#home"
end
