require_relative 'operation_binary'

class Sum < Binary_Operation
	def execute
		@result=@operand_1+@Operand_2
	end
end
