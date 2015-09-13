require 'sinatra'

get '/' do
  erb :index
end

post '/cal/' do
  month = params[:month]
  year = params[:year]
  return "<pre>" + `cal -h #{month} #{year}` + "</pre>"
end

post '/easter/' do
  # TODO: show easter given year
end
