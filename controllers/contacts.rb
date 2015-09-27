get "/" do
erb :"index"
end





post "/contacts" do
  
  Pony.mail ( {
        :to => 'jeannie@kickpunchcreative.com, jeannie@omaha.dog',
        :from => "jeannie@kickpunchcreative.com",
        :subject => "Omaha.Dog Submission :#{params[:name]}",
        :body=> "business name: #{params[:name]}",
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
    redirect "#thanks" #should redirect to login after creating contact.
 
 
end

post "/stickers" do
  
  Pony.mail ( {
        :to => 'jeannie@kickpunchcreative.com, jeannie@omaha.dog',
        :from => "jeannie@kickpunchcreative.com",
        :subject => "Omaha.Dog Sticker Request :#{params[:name]}",
        :body=> "business name: #{params[:name]} business address: #{params[:address]}",
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
    redirect "#thanks-two" #should redirect to login after creating contact.
 
 
end