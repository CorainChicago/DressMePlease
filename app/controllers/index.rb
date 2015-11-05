require 'unirest'

get '/' do
  redirect '/index'
end

get '/index' do
  @time = Time.now.utc
  @quirk = Quirk.last
  # These code snippets use an open-source library.
  # These code snippets use an open-source library. http://unirest.io/ruby
response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=You+will+learn+how+to+speak+like+me+someday.++Oh+wait.",
  headers:{
    "X-Mashape-Key" => "dHsIgBnEJxmshvu2LeuHmgAAOj4Ep1VklVxjsnBvDXEXyZIFF9",
    "Accept" => "text/plain"
  }
  p response

  erb :index
end



# These code snippets use an open-source library.
