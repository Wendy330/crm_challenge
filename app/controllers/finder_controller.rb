class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers_by_order = Customer.all.order(:fullName)
  end

  def missing_email
    @customers_missing_email = Customer.where("email == ''")
  end
end
