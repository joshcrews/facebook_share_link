# Facebook Share Link

Builds a link to share something to Facebook based on the Facebook Feed Dialog: http://developers.facebook.com/docs/reference/dialogs/feed/

## Reason for being

I needed this to put facebook share links in emails where the javascript facebook dialogs aren't available.

## Install

<pre>gem install facebook_share_link</pre>

Or add <pre>gem 'facebook_share_link'</pre> to your Gemfile

## Usage

### Mininum

<pre>
FacebookShareLink.link(
  app_id: 11111111111, 
  redirect_uri: "http://yoursite.com/return")
</pre>

### Full usage

<pre>
FacebookShareLink.link(
  app_id: 11111111, 
  link: "https://github.com/joshcrews", 
  description: "Josh Crews on Github",
  message: "I just found Josh Crews on Github",
  picture: "http://joshcrews.com/logo.png", 
  caption: "Josh Crews dot Com",
  redirect_uri: "http://google.com/q=Josh Crews"
)
</pre>

#### Outputs

<pre>http://www.facebook.com/dialog/feed?app_id=11111111&caption=Josh+Crews+dot+Com&description=Josh+Crews+on+Github&link=https%3A%2F%2Fgithub.com%2Fjoshcrews&message=I+just+found+Josh+Crews+on+Github&picture=http%3A%2F%2Fjoshcrews.com%2Flogo.png&redirect_uri=http%3A%2F%2Fgoogle.com%2Fq%3DJosh+Crews</pre>

Note: that link won't work because that's a made up app_id