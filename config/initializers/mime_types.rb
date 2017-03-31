# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf

Rack::Mime::MIME_TYPES.merge!({
	".mp4"	=> 	"video/mp4",
  	".ogg"	=> 	"application/ogg",
  	".ogx"	=> 	"application/ogg",
  	".ogv"  => 	"video/ogg",
  	".oga"  => 	"audio/ogg",
  	".m4v"  => 	"video/mp4",
  	".mp3"  => 	"audio/mpeg",
  	".m4a"  => 	"audio/mpeg",
  	".htc"	=>	"text/x-component"
})