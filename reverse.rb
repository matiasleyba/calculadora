require_relative 'operation_unary'
class Inverse < Unary_Operation
	def execute
		@result=1/@operand


end