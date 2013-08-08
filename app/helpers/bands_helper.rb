module BandsHelper
  def gravatar_for(band)
    gravatar_id = Digest::MD5::hexdigest(band.contact_email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, :size => 80, alt: band.name, class: "gravatar")
  end
end
