class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def alphabetized
    @ordered_customers = Customer.order("full_name")
  end

  def missing_email
    @no_email = Customer.where("email LIKE ''")
  end
end
