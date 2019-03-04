# frozen_string_literal: true

require 'hashie/mash'

module GQLi
  # Response object wrapper
  class Response
    attr_reader :data, :extensions, :query

    def initialize(data, extensions, query)
      @data = Hashie::Mash.new(data)
      @extensions = Hashie::Mash.new(extensions)
      @query = query
    end
  end
end
