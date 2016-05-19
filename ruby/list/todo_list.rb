
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
end