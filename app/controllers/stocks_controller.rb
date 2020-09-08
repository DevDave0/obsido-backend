class StocksController < ApplicationController


    skip_before_action :logged_in?, only: [:create, :index]

    def index 
        stocks = Stock.all 
        render json: StockSerializer.new
    end 

    def create 
        stock = Stock.create(
            name: params[:name],
            ticker: params[:ticker],
            price: params[:price],
            description: params[:description],
            amount: params[:amount],
            category_id: params[:category_id]
        )

        if stock.valid?
            stock.save 
            render json: {stock: StockSerializer.new(stock)}
        else 
            render json: {'error': 'There was an error. Please try again'}
        end 

    end 


end
