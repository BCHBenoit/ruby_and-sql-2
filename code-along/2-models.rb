# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file
# puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table
new_row_companies_table = Company.new
    new_row_companies_table["name"] = "Apple"
    new_row_companies_table["city"] = "Cupertino"
    new_row_companies_table["state"] ="CA"
    new_row_companies_table["url"] = "https://apple.com"
new_row_companies_table.save

new_row_companies_table = Company.new
    new_row_companies_table["name"] = "Amazon"
    new_row_companies_table["city"] = "Seattle"
    new_row_companies_table["state"] = "WA"
new_row_companies_table.save

new_row_companies_table = Company.new
    new_row_companies_table["name"] = "Twitter"
    new_row_companies_table["city"] = "San Francisco"
    new_row_companies_table["state"] = "CA"
new_row_companies_table.save


# p new_row_companies_table
# p Company.all.count


# puts new_row_companies_table
# p new_row_companies_table

# 3. query companies table to find all row with California company
# get_all_table_companies = Company.all
# p get_all_table_companies

# get_california_companies = Company.where({"state" => "CA"})
# p get_california_companies

# puts get_california_companies.count

# 4. query companies table to find single row for Apple
get_apple = Company.where({"name" => "Apple"})
# p get_apple

get_apple = Company.find_by({"name" => "Apple", "state" => "CA"})
p get_apple

# 5. read a row's column value
# p get_apple["name"]
# p get_apple["city"]
# p get_apple["state"]
# p get_apple["url"]
# p get_apple["id"]

# 6. update a row's column value
# get_twitter = Company.find_by({"name" => "Twitter"})
# p get_twitter
# get_twitter["url"] = "https://twitter.com"
# get_twitter["name"] = "X (Formerly Twitter)"
# get_twitter.save
# p get_twitter
# 7. delete a row
# get_X_formerly_twitter = Company.find_by({"name" => "X (Formerly Twitter)"})
# p get_X_formerly_twitter
# get_X_formerly_twitter.destroy
