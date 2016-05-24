require_relative 'sum'
require_relative 'rest'
require_relative 'multiplication'
require_relative 'division'
require_relative 'inverse'
require_relative 'square_root'
require_relative 'square'
class Calculator
	OPERATIONS = {
		sum: '+',
		rest: '-',
		multiplication: '*',
		division: '/',
		inverse: 'INV',
		square: 'SQ',
		square_root: 'SQRT'
	}

	def add_operand (operand)
		if @current_operation
			@current_operation.add_operand(operand)
		else
			@operand_temp = operand
		end

	end

	def set_operation(operator)
		 operation_class = case operator
			when OPERATIONS[:sum] then Sum
			when OPERATIONS[:rest] then Rest
			when OPERATIONS[:multiplication] then Multiplication
			when OPERATIONS[:division] then Division
			when OPERATIONS[:inverse] then Inverse
			when OPERATIONS[:square_root] then SquareRoot
			when OPERATIONS[:square] then Square
		end
		@current_operation = operation_class.new(@operand_temp)
		@operand_temp = ''
	end

	def execute
		result = @current_operation.execute
		clear
		result
	rescue ZeroDivisionError
		'No se puede dividir entre cero (0)'
	end

	def clear
		@current_operation = nil
		@operand_temp = ''
	end
end