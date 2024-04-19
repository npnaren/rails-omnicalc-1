Rails.application.routes.draw do
  get '/', to: 'homepage#homepage'
  get '/square/new', to: 'square#square'
  get '/square/results', to: 'square#square_it'
  get '/square_root/new', to: 'square_root#square_root'
  get '/square_root/results', to: 'square_root#square_root_it'
  get '/payment/new', to: 'payment#payment'
  get '/payment/results', to: 'payment#calc_pay'
  get '/random/new', to: 'random#random'
  get '/random/results', to: 'random#randomize'
end
