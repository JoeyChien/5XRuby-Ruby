require 'sinatra'
require "sinatra/reloader" if development?

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