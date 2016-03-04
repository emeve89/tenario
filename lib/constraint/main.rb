module Constraint
  class Main
    def self.matches?(request)
      slugs = %w( www admin )
      !request.subdomain.present? || slugs.include?(request.subdomain)
    end
  end
end
