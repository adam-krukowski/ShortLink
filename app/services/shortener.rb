class Shortener

attr_reader :url, :link_model

  def initialize(url, link_model = Link)
    @url = url
    @link_model = link_model
  end

  def lookup_code
    Digest::SHA256.hexdigest(url)[0..6]
  end

  def generate_short_link
    link_model.create!(original_url: url, lookup_code: lookup_code)
  end
end
