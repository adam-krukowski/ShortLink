require "rails_helper"

RSpec.describe Link do

  it "always has an original URL" do
    link = Link.new(
      original_url: "https://www.favouritewebsite.com/articles/how-to-cook",
      short_code: "1234567"
    )
    link.save

  end


end
