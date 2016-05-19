
class TodoList
	def initialize(chores)
		@chores_list = chores
	end
	def get_items
		p @chores_list
	end

	def add_item(new_chore)
		@chores_list << new_chore
	end

	def delete_item(deleted_chore)
		@chores_list.delete(deleted_chore)
	end

	def get_item(index)
		p @chores_list[index]
	end
end