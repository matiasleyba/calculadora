require_relative 'operation_unary'
class Square < Unary_Operation
	def execute
		@result=@operand*@operand
	end
end