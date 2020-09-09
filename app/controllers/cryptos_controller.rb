class CryptosController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :index]

    def index 
        cryptos = Crypto.all 
        render json: cryptos
    end 

    def create 
        crypto = Crypto.create(
            name: params[:name],
            ticker: params[:ticker],
            description: params[:description],
            amount: params[:amount],
            category_id: params[:category_id]
        )

        if crypto.valid?
            crypto.save 
            render json: {crypto: CryptoSerializer.new(crypto)}
        else 
            render json: {'error': 'There was an error. Please try again'}
        end 

    end 

end
