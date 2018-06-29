if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_5fPGFKVHscTSB4BROHlqnXJ5',
    secret_key: 'sk_test_luI7ADrcz2rpm72LmKFUaY62'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]