class Shortener

attr_reader :url, :link_model

  def initialize(url, link_model = Link)
    @url = url
    @link_model = link_model
  end

  def lookup_code
    i = 0
    loop do
      code = get_fresh_code(i)
      break code unless link_model.exists?(lookup_code: code)
      i = i + 1
    end
  end

  def generate_short_link
    link_model.create!(original_url: url, lookup_code: lookup_code)
  end

  private

  def get_fresh_code(i)
    SecureRandom.uuid[0..6]
  end
end
