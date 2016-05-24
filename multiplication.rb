require_relative 'operation_binary'
class Multiplication < BinaryOperation
def execute
	@result = @operand_1 * @operand_2
end
end