require_relative 'operation_binary'
class Division < BinaryOperation
def execute
	@result = @operand_1 / @operand_2
end
end