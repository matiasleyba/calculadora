require_relative 'operation_unary'

class Square_Root < Unary_Operation

	def execute
		@result=sqrt(@operand)
	end
end