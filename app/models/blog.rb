class Blog < ActiveRecord::Base
  validates :subdomain, uniqueness: {case_sensitive: false}
  validates :name, uniqueness: {case_sensitive: false}

  has_and_belongs_to_many :users
end
