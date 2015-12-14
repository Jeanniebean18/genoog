

unless ActiveRecord::Base.connection.table_exists?(:contacts)
  ActiveRecord::Base.connection.create_table :contacts do |t|
    t.string :name
    t.string :email
    t.string :phone
    t.string :message
    t.string :date
  end  
end



ActiveRecord::Base.connection.drop_table(:businesses)

# unless ActiveRecord::Base.connection.table_exists?(:businesses)
#   ActiveRecord::Base.connection.create_table :businesses do |t|
#     t.string :name
#     t.string :address
#     t.string :phone
#     t.string :link
#     t.string :area
#     t.string :category
#     t.string :where
#   end
# end




