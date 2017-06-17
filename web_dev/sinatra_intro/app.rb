# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#write a get route for /contact that displays an address.
get '/contact' do
"167 Diamond Street, Brooklyn, NY, 11222"
end



#write a get route for /great_job that can take a persons's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end


#A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?
get '/:num_1/plus/:num_2' do
 result = params[:num_1].to_i + params[:num_2].to_i
 puts "#{result} is your sum!"
end



#Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present
get '/students/campus/:campus' do
  students = db.execute("SELECT name FROM students WHERE campus=?", [params[:campus]])
  response = ''
  students.each do |student|
    response << "#{student['name']} goes to the #{[params[:campus]]} campus.<br><br>"
  end
  response
end

#Is Sinatra the only web app library in Ruby? What are some others?
#here is a useful page full of other ruby web app library.
#https://www.ruby-toolbox.com/categories/web_app_frameworks



#Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
#it seems as though SQLite is a more uncommon database to use with Sinatra. I am seeing more of the names "Heroku" and "Active Record"

#What is meant by the term web stack?
#Web stack is the various softwares a developer uses to build things. Every developer may have a different web stack, its all based on their own preferences.
