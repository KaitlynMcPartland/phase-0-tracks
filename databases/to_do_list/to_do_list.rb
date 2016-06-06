##Make a to do list
#Ask user if they want to make a new to do list or view an existing one

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
