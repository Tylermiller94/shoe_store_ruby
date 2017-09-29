require("bundler/setup")
Bundler.require(:default)
require 'pry'


Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  @stores = Store.all
  erb(:stores)
end

#stores

post "/stores" do
   name = params["name"]
   store.create({name: name})
   redirect "/stores"
end
