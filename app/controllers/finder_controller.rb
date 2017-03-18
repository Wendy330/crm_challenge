class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers_by_order = Customer.all.order(:fullName)
  end

  def missing_email
    # @customers_missing_email = Customer.where(email: [nil, ''])
    # @customers_missing_email = Customer.where("email == 'hebetien@gmail.com'")
    @customers_missing_email = Customer.where("email == ''")
  end
end
