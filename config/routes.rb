Rails.application.routes.draw do
  scope module: :v1, path: 'api/v1' do
    resources :clientes, only: [:index, :show, :create, :update, :destroy]
    resources :funcionarios, only: [:index, :show, :create, :update, :destroy]
    resources :ordens_de_servico, only: [:index, :show, :create, :update, :destroy]

    get "/ordens_de_servico/:numero", to: "ordens_de_servico#buscar_por_numero", as: :buscar_ordem_de_servico_por_numero
  end
end
