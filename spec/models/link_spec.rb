require 'rails_helper'

RSpec.describe Link, type: :model do

  it "always has an original URL" do
    link = Link.new(
      original_url: "https://www.favouritewebsite.com/articles/how-to-cook",
      lookup_code: "1234567"
    )
    link.save

  end


end
