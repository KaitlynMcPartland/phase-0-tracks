##To do list program
## Create a to-do list database
## to_do_db = SQLite3::Database.new("to_do_lists.db")

## Ask user if they want to make a new to do list or view an existing one

## If they say 'New' Create a new to do list
## Ask user for new table name
## Create Table new_table_name (
## 		ID, task, due_date)
## save new table as current_table

## Else If they say view existing then ask them which one
## print to-do lists to screen if possible
## save user answer as current_table


## Ask user what they would like to do with the table, view, complete/remove task
## update task, add task, view different to-do list or exit.
## to_do = gets.chomp

## case to_do

## when "View" 
## puts SELECT * FROM current_table

## when "Complete item"
## Ask which task they would like to delete (and store as variable)
## DELETE FROM current_table WHERE task = (task_to_delete)
## view to-do list

## when "Update task"
## Ask which task they would like to update (and store as variable)
## Ask what they would like to update, task or due date (store as variable)
## Ask what they would like the new value to be (store as variable)
## UPDATE current_table SET atb_to_update = new_atb_vale WHERE task = task_to_update
## view to-do list

## when "Add task"
## Ask what the new task to add is (store as variable)
## Ask when due date of new task is (store)
## INSERT INTO current_table (task, date) VALUES (new_task, new_due_date)
## view to-do list

## when "Switch to-do lists"
## view all to do lists
## ask user for new to-do list and store as current_table
## view to-do list

## when "Exit"
## break from loop

## else
## puts please enter a valid input
## end

require 'sqlite3'

to_do_db = SQLite3::Database.new("lists.db")

puts "If you would like to create a new table enter 'new', 
if you would like to work with an existing table enter 'existing'."
new_or_old_table = gets.chomp.downcase

if new_or_old_table == "new"
	puts "What would you like to call your new to-do list?"
	new_table = gets.chomp.downcase

	create_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS #{new_table}(
		id INTEGER PRIMARY KEY,
		task VARCHAR(500),
		due_date VARCHAR(100)
		)
		SQL
	to_do_db.execute(create_table_cmd)

	current_table = new_table
elsif new_or_old_table == "existing"
	puts "These are your existing to-do lists:"
	puts to_do_db.execute("SELECT name FROM sqlite_master WHERE type='table'")
	puts "What to-do list would you like to work with?"
	current_table = gets.chomp.downcase
end

puts "What would you like to do with #{current_table} to-do list?
To view list enter 'view'.
To add a task enter 'add'.
To complete a task and remove it from your list enter 'complete'.
To update a task enter 'update'.
To change to a different to-do list enter 'change'.
If you are done working with your to-do lists enter 'exit'."

to_do = gets.chomp.downcase
case to_do
when 'view'
	puts to_do_db.execute("SELECT * FROM #{current_table}")
when 'add'
	puts "What is the task you'd like to add?"
	new_task = gets.chomp
	puts "What is this tasks due date?"
	new_task_due = gets.chomp
	to_do_db.execute("INSERT INTO #{current_table} (task, due_date) VALUES ('#{new_task}', '#{new_task_due}')")
	puts "Updated to-do list:"
	puts to_do_db.execute("SELECT * FROM #{current_table}")
when 'complete'
	puts to_do_db.execute("SELECT task FROM #{current_table}")
	puts "Which task would you like to complete?"
	task_to_complete = gets.chomp
	to_do_db.execute("DELETE FROM #{current_table} WHERE task = '#{task_to_complete}'")
	puts "Updated to-do list:"
	puts to_do_db.execute("SELECT * FROM #{current_table}")
else
	puts "Enter a valid entry next time."
end



