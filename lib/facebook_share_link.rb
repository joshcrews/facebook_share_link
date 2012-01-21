module FacebookShareLink
  
  def FacebookShareLink.link(options)
    raise FacebookShareLinkError, 'Missing app_id' if options[:app_id].nil? || options[:app_id] == ""
    raise FacebookShareLinkError, 'Missing redirect_uri' if options[:redirect_uri].nil? || options[:redirect_uri] == ""
    
    facebook_dialog_path = "http://www.facebook.com/dialog/feed?"
    
    queries = options.collect do |key, value|
                to_query(key, value.to_s)
              end.sort * '&'
    
    facebook_dialog_path + queries
  end
  
  private
  
  ## FYI, copied and modded from Rails core
  def FacebookShareLink.to_query(key, value)
    require 'cgi' unless defined?(CGI) && defined?(CGI::escape)
    "#{CGI.escape(key.to_s)}=#{CGI.escape(value.to_s)}"
  end
  
end

class FacebookShareLinkError < StandardError
end


