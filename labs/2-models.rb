# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_row_salespeople = Salesperson.new
    new_row_salespeople["first_name"] = "Benoit"
    new_row_salespeople["last_name"] = "Chabaneix"
    new_row_salespeople["email"] = "b@email.com"
new_row_salespeople.save

new_row_salespeople = Salesperson.new
    new_row_salespeople["first_name"] = "Juan"
    new_row_salespeople["last_name"] = "Perez"
    new_row_salespeople["email"] = "j@email.com"
new_row_salespeople.save

# 3. write code to display how many salespeople rows are in the database
select_all_salespeople_table = Salesperson.all
p select_all_salespeople_table
p select_all_salespeople_table.count
puts "There are #{select_all_salespeople_table.count} salespeople"


# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
get_row_benoit = select_all_salespeople_table.find_by({"first_name" => "Benoit"})
p get_row_benoit

get_row_benoit["email"] = "bch@email.com"
get_row_benoit.save



# CHALLENGE:
# 5. write code to display each salesperson's full name

#Lo que tengo que hacer es un for loop que vaya a traves de todos los rows del array salespeople

#1. Para eso primero selecciono toda la tabla:
select_all_salespeople_table = Salesperson.all

#2. Defino el variable que voy a crear para que que tome los valores segun el for loop va iterando
# por cada row:
salespeople_row = 0

#3 creo el for loop
for salespeople_row in select_all_salespeople_table
    salespeople_row
    p salespeople_row
end
#Al correr esto en cada loop salespeople_row va tomar el valor del row de esa iteracion, es decir
# en la primera vuelta va tomar el valor Salespeople[0], en la segunda va a tomar el valor de
# Salespeople[1] y asi. Y con P salespeople_row lo va a ir imprimiendo.

#4. Pero como solo me piden el full name de los salespeople, es decir las columnas first_name y
# last_name, y no todo el array (es decir todas las columnas del hash), ahora tengo que solo
# mostrar esa informacion:
for salespeople_row in select_all_salespeople_table
    salespeople_row["first_name"]
    salespeople_row["last_name"]
    p "#{salespeople_row["first_name"]} #{salespeople_row["last_name"]}"
end

#Finalmente todo junto se ve asi:
select_all_salespeople_table = Salesperson.all
salespeople_row = 0

for salespeople_row in select_all_salespeople_table
    salespeople_row["first_name"]
    salespeople_row["last_name"]
    p "#{salespeople_row["first_name"]} #{salespeople_row["last_name"]}"
end


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
