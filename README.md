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
  redirect: "http://yoursite.com/return")
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
  redirect: "http://google.com/q=Josh Crews"
)
</pre>