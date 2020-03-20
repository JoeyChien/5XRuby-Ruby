module Ker
end

class BasicObj
end

class Obj < BasicObj
  include Ker
end

o = Obj.new
p o.ancestors
