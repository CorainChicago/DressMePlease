get '/' do
  redirect '/index'
end

get '/index' do
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
