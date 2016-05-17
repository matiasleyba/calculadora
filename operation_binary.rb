require_relative 'operation'
class Binary_Operation < Operation
	attr_accessor :operand_1, :operand_2
	
	def add_operand(operand)
		operand=gets.chomp
		if @operand_1.nil?
			@operand_1=operand
		else 
			@operand_2=operand
		end
	end
end