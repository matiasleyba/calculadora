require_relative 'operation'
class Unary_Operation < Operation
attr_accessor :operand
def add_operation(operand)
operand= gets
@operand=operand
end
end