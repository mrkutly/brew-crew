class Purchase < ApplicationRecord
  belongs_to :brew
  belongs_to :customer

  def customer_name
    if self.customer
      self.customer.name
    else
      nil
    end
  end

  def customer_name=(name)
    customer = Customer.find_or_create_by(name: name)
    self.customer = customer
  end
end
