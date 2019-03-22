require 'stripe'
if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_6bs2XIm9yBYPZM810p2YJCLk',
    secret_key: 'sk_test_TDsLtIOp8E69rCCMbhCcPdZo'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
