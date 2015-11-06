require 'unirest'

get '/' do
  redirect '/index'
end

get '/index' do
  @time = Time.now.utc
  @quirk = Quirk.last
  text = @quirk.quote
  num = text.length
  a = text.gsub(" ", "+")
  p "$$$$$$"
  text.insert(0, '+')
  @whattowear = Recommendation.new
  @array = @whattowear.compile_recommendations


  @forecast = Forecast.get_forecast


  # This is the code to pull from the Yoda API, after the '?sentence=' is the phrase the app will convert
  #The sentence needs to be in the format of 'word+word+word', a word with '+' before the next word
  # I commented it out to keep us from over pulling on the API.
  # response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=If+the+temperature+is+less+than+my+age+I+dont+get+out+of+bed",
  # headers:{
  #   "X-Mashape-Key" => "dHsIgBnEJxmshvu2LeuHmgAAOj4Ep1VklVxjsnBvDXEXyZIFF9",
  #   "Accept" => "text/plain"
  # }

  erb :index
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.create(params[:user])
  if @user.valid?
    session[:user_id] = @user.id
    redirect "/index"
>>>>>>> 532a0c345e1d5275303f50577c47ca1bb66f238a
  else @registration_error = true
    erb :'users/new'
  end
end

get '/users/login' do
  erb :'users/login'
end


post '/users/login' do
  if @user = User.authenticate(params[:user][:email], params[:user][:password])
    session[:user_id] = @user.id
    redirect '/index'
  else
    @error = "Sorry, the credentials provided do not match."
    erb :'users/show'
  end
end

get '/about' do
  erb :about
end
get '/users/logout' do
  session[:user_id] = nil
  redirect '/index'
end

