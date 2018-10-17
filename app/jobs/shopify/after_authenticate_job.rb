module Shopify
  class AfterAuthenticateJob < ActiveJob::Base
    def perform(shop_domain:)
      shop = Shop.find_by(shopify_domain: shop_domain)

      shop.with_shopify_session do
        logger.info "TEST AFTER AUTHENTICATE JOB"
      end
    end
  end
end
