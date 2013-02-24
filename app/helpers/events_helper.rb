module EventsHelper
  def thumb_url(url)
    # http://imageshack.us/a/img717/8971/image7xd.jpg - URL
    # http://imageshack.us/scaled/thumbx2/717/image7xd.jpg - thumb
    if (url.include?("/scaled/"))
      tokens = url.split("/")
      tokens[4] = "thumbx2"
      return tokens.join("/")
    else  
      tokens = url.split("/")
      return "http://imageshack.us/scaled/thumbx2/#{tokens[4].slice(3, tokens[4].length)}/#{tokens[6]}"
    end
  end
end
