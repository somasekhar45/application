class AddStripeCustomerTokenToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :stripe_customer_token, :string
  end
end
