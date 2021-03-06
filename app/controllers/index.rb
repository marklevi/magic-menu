get '/' do
  # Look in app/views/index.erb
  # erb :index
  redirect '/menus/new'
end

get '/menus/new' do 
  @menus = Menu.all
  erb :new
end

post '/menus' do
  menu = Menu.create(params)
  content_type :json
  {menu_add: erb(:_addmenu, :layout => false, :locals => {:menu => menu})}.to_json
end

get '/items' do 
  @items = Item.all
  erb :items
end

post '/items' do 
  item = Item.create(params)
  content_type :json
  {item_add: erb(:_additem, :layout => false, :locals => {:item => item})}.to_json
end

get '/menus/:id' do 
  @menu = Menu.find(params[:id])
  @items = Item.all
  erb :show
end

post "/menu/:menu_id/item" do 
  menu = Menu.find(params[:menu_id])
  item = Item.find(params[:item_id])

  menu.items << item
  content_type :json

  {item_html: erb(:_item, :layout =>false, :locals => {:item => item, :menu => menu})}.to_json

end

delete "/menuitem" do 
  Menu.find(params[:menu_id]).items.delete(Item.find(params[:item_id]))
  200
end





# alternative way
# post "/menu/:id/item" do 
#   @items_parameters.each do |item|
#   @menu.items.create(params[:item])
#   end
# end
