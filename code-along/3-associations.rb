# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company

get_companies_table = Company.all
get_apple_row = get_companies_table.find_by({"name" => "Apple"})
get_apple_id = get_apple_row["id"]
p get_apple_id

new_row_contacts_table = Contact.new
    new_row_contacts_table["first_name"] = "Tim"
    new_row_contacts_table["last_name"] = "Cook"
    new_row_contacts_table["email"] = "tim@apple.com"
    new_row_contacts_table["company_id"] = get_apple_id
new_row_contacts_table.save

new_row_contacts_table = Contact.new
    new_row_contacts_table["first_name"] = "Craig"
    new_row_contacts_table["last_name"] = "Federighi"
    new_row_contacts_table["email"] = "craig@apple.com"
    new_row_contacts_table["company_id"] = get_apple_id
new_row_contacts_table.save


get_companies_table = Company.all
get_amazon_row = get_companies_table.find_by({"name" => "Amazon"})
get_amazon_id = get_amazon_row["id"]

new_row_contacts_table = Contact.new
    new_row_contacts_table["first_name"] = "Jeff"
    new_row_contacts_table["last_name"] = "Bezos"
    new_row_contacts_table["email"] = "jeff@amazon.com"
    new_row_contacts_table["company_id"] = get_amazon_id
new_row_contacts_table.save

# 2. How many contacts work at Apple?
get_contacts_table = Contact.all
get_contacts_work_at_apple = get_contacts_table.where({"company_id" => get_apple_id})
p get_contacts_work_at_apple.count

# 3. What is the full name of each contact who works at Apple?
get_contacts_table = Contact.all
get_contacts_work_at_apple = get_contacts_table.where({"company_id" => get_apple_id})
apple_row = 0

for apple_row in get_contacts_work_at_apple
    apple_row["first_name"]
    apple_row["last_name"]
    p "#{apple_row["first_name"]} #{apple_row["last_name"]}"
end


