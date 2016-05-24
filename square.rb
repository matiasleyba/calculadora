require_relative 'operation_unary'
class Square < UnaryOperation
	def execute
		@result = @operand * @operand
	end
end