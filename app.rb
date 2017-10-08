require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
require('./lib/brand')
require('./lib/store')
also_reload('lib/**/*.rb')
require('pg')

get("/") do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:index)
end
#stores

post "/stores" do
   name = params["name"]
   store.create({name: name})
   redirect "/stores"
end
