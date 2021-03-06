get "/" do
  erb :"index", :layout => :"layout"
end

get "/thanks" do
  erb:thanks
end

post "/business" do
  @business = Business.create({name:params[:name], address: params[:address], phone:params[:phone], link:params[:link], area:params[:area], category:params[:category], where:params[:where]})

  if @business.save
    redirect "/entry" 
  end
end

get "/business/:x" do
  @business = Business.find(params["x"])
  @business.destroy
  redirect "/entry"
end


post "/contacts" do
  
  Pony.mail ( {
    :to => 'jeannie@kickpunchcreative.com',
    :from => "jeannie@kickpunchcreative.com",
    :subject => "Genoog Website Contact From :#{params[:name]}",
    :body=> "name: #{params[:name]} email: #{params[:email]} message: #{params[:message]}",
    :via => :smtp,
    :via_options => {  
      :address   => 'smtp.gmail.com',  
      :port   => '587',  
      :enable_starttls_auto => true,
      :user_name   => 'jeannie@kickpunchcreative.com',  
      :password   => 'genie1983',  
      :authentication   => :plain,   
      :domain => "kickpunchcreative.com"
    }
    })
    redirect "/thanks"
  end


  get "/entry" do
      if session[:user_id] # && session[:user_id] == params[:id].to_i
        
        erb :entry
      else
        redirect "/login"
      end
    end

    get "/logout" do
      session[:user_id] = nil
      redirect "/login"
    end

    get "/login" do
      erb :login
    end


    post "/valid" do
      
      if params[:email] == "jeannie@omaha.dog" && params[:password]== "banana"
        session[:user_id] = 1
        redirect "/entry" # user_path(@user.id)
      else
        redirect "/login" # user_path(@user.id)
      end
    end
  
    # get "/create_user" do
 #      erb :create
 #    end

    # post "/save_user" do
   #    @user = User.new({name: params[:name], email: params[:email], password: params[:password]})
   #    # add unique active record.
   #    if @user.valid?
   #      the_password = BCrypt::Password.create(params[:password])
   #      @user.password = the_password
   #      @user.save
   #      #redirect make a get request to the following path
   #      redirect "/login" # :"owners/add_owner_success"
   #    else
   #      @error = true
   #      erb :create
   #    end
   #  end


   
   