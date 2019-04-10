class CustomersController < ApplicationController
     def index
        @customers = Customer.all
    end

    def new
        if flash[:data]
            @customer = Customer.new(flash[:data])
            else
            @customer = Customer.new
        end
    end
    def show
        @customer = Customer.find(params[:id])
        # @restaurants = Restaurant.where(style: @restaurant.style)
    end

    def create
        @customer = Customer.new(customer_params)
        if @customer.save
        redirect_to customer_path(@customer)
        else
            flash[:errors] = @customer.errors.full_messages
            flash[:data] = @customer
            redirect_to new_customer_path
        end
    end
    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
    end

    def customer_params
        params.require(:customer).permit(:name, :user_name, :bio, :dob)
    end
   
end
