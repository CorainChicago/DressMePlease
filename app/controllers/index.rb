require 'unirest'

get '/' do
  redirect '/index'
end

get '/index' do
  @time = Time.now.utc
  @quirk = Quirk.last
  text = @quirk.quote 
  # This is the code to pull from the Yoda API, after the '?sentence=' is the phrase the app will convert
  #The sentence needs to be in the format of 'word+word+word', a word with '+' before the next word
  # I commented it out to keep us from over pulling on the API.
  # response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=Dogs+run+to+chase+a+ball",
  # headers:{
  #   "X-Mashape-Key" => "dHsIgBnEJxmshvu2LeuHmgAAOj4Ep1VklVxjsnBvDXEXyZIFF9",
  #   "Accept" => "text/plain"
  # }


  erb :index
end

#