class Address < ActiveRecord::Base

  belongs_to :product
  attr_accessible :email, :product_id, :stripe_card_token, :stripe_customer_token



  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(description: email,plan: product_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  rescue Stripe::InvalidRequestError => e
    logger.error "Stripe error while creating customer: #{e.message}"
    errors.add :base, "There was a problem with your credit card."
    false
  end

end
