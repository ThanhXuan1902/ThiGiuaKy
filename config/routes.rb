Rails.application.routes.draw do
  resources :nha_xuat_bans
  resources :the_loai_saches
  resources :danh_muc_tac_gia
  resources :danh_muc_saches
  root "danh_muc_tac_gia#index"
  get "/the_loai_sach",to: "the_loai_saches#index"
  get "/nha_xuat_ban",to: "nha_xuat_bans#index"
  get "/danh_muc_sach",to: "danh_muc_saches#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
