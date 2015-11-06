require 'unirest'

get '/' do
  redirect '/index'
end

get '/index' do
  @weather = Forecast.get_forecast
  @time = Time.now.utc
  @quirk = Quirk.last
  text = @quirk.quote
  #@whattowear = Recommendation.new
  #@array = @whattowear.compile_recommendations

  # @icon = Forecast.get_forecast.icon

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

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.create(params[:user])
  if @user.valid?
    session[:user_id] = @user.id
    redirect "/users"
  else @registration_error = true
    erb :'users/new'
  end
end

get '/login' do
  erb :'users/show'
end

post '/login' do
  if @user = User.authenticate(params[:email], params[:password])
    session[:user_id] = @user.id
    redirect '/users'
  else
    @error = "Sorry, the credentials provided do not match."
    erb :'users/show'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/login'
end
