require 'sinatra'
require "sinatra/reloader" if development?

enable :sessions

get "/" do
  result = [*1..43].sample(5).sort
  erb :index, layout: :abc, locals: { re: result } 
  #erb(:index, {layout: :abc, locals: { re: result }} )
  #erb (:index)
end

#get ("/about") do
get "/about" do
  erb :about, layout: :abc 
end

get "/info.php" do
    "假的php，附檔名不影響他是甚麼寫的"
end

get "/cats/:id" do
  "prams = #{params} ，第 #{params[:id]} 的貓"
end

# post "/login" do
#   username = params[:username]
#   password = params[:password]
#   if username == "123" && password == "456"
#     result = "ok"
#   else 
#     result = "ng"
#   end
#   erb:login, locals: { res: result } 
# end

# 有傳送資料用post
post "/login" do
  username = params[:username]
  password = params[:password]
  if username == "123" && password == "456"
    # 產生session
    session[:hi9527] = username
  end
  redirect "/" # 301/302
  # 200-render-用某個頁面去把東西畫在上面
  # erb :index
  # 會印在終端機
  # puts "ok"
end

get "/logout" do
  session[:hi9527] = nil
  redirect "/"
end