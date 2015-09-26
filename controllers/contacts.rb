get "/" do
erb :"index"
end

get "/question-one" do
erb :"question-one"
end

get "/question-two" do
erb :"question-two"
end

get "/question-three" do
erb :"question-three"
end

get "/question-four" do
erb :"question-four"
end

get "/question-final" do
erb :"question-final"
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