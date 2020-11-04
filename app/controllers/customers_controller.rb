class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  def alphabetized; end

  def missing_email; end
end
