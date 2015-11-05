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
