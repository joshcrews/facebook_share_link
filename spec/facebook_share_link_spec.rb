require 'spec_helper'

describe FacebookShareLink do
  
  def standard_parameters
    {
      app_id: 11111111, 
      link: "https://github.com/joshcrews", 
      description: "Josh Crews on Github",
      message: "I just found Josh Crews on Github",
      picture: "http://joshcrews.com/logo.png", 
      caption: "Josh Crews dot Com",
      redirect_uri: "http://google.com/q=Josh Crews"
    }
  end
  
  it "builds a link to share on facebook" do
    facebook_share_url = FacebookShareLink.link(standard_parameters)
    facebook_share_url.should == "http://www.facebook.com/dialog/feed?app_id=11111111&caption=Josh+Crews+dot+Com&description=Josh+Crews+on+Github&link=https%3A%2F%2Fgithub.com%2Fjoshcrews&message=I+just+found+Josh+Crews+on+Github&picture=http%3A%2F%2Fjoshcrews.com%2Flogo.png&redirect_uri=http%3A%2F%2Fgoogle.com%2Fq%3DJosh+Crews"
  end
  
  it "tells you if missing app_id" do    
    lambda do
      facebook_share_url = FacebookShareLink.link(standard_parameters.merge(app_id: nil))
    end.should raise_error(FacebookShareLinkError, 'Missing app_id')
  end
  
  it "tells you if missing redirect_uri" do
    lambda do
      facebook_share_url = FacebookShareLink.link(standard_parameters.merge(redirect_uri: nil))
    end.should raise_error(FacebookShareLinkError, 'Missing redirect_uri')
  end
  
end