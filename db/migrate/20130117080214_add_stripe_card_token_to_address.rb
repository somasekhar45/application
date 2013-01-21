class AddStripeCardTokenToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :stripe_card_token, :string
  end
end
