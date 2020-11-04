class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def alphabetized
    @alpha_customers = Customer.order("full_name DESC")
  end

  def missing_email; end
end
