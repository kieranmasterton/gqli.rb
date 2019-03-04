# frozen_string_literal: true

module GQLi
  # Module for creating a Shopify GraphQL client
  module Shopify
    # Creates a Shopify GraphQL client
    def self.create(shop_domain, access_token, validate_query: true)
      GQLi::Client.new(
        "https://#{shop_domain}/admin/api/graphql.json",
        headers: {
          'X-Shopify-Access-Token' => access_token
        },
        validate_query: validate_query
      )
    end
  end
end
