if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_J9dogvbCu4bkn7xOgK50F8qF',
    secret_key: 'sk_test_UQYUFFuwYVXbzaNgJP4RdtP8'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]