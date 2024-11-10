class Link < ApplicationRecord
  validates_presence_of :lookup_code, :original_url
end
