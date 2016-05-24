require_relative 'operation_unary'

class SquareRoot < UnaryOperation
def execute
		@result = Math.sqrt(@operand)
	end
end