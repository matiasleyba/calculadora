require_relative 'operation_unary'
class Inverse < UnaryOperation
	def execute
		@result = 1 / @operand
    end

end