
class Outer
  
end

module Mod1
  class Mod1Class1
    def self.bez
    end
  end
end
n = Object.new
m = Mod1::Mod1Class1.new

puts "=================="

m.instance_eval { def mi_eval ; end; puts "m.instance_eval = #{self}, #{self.class}" }
Mod1::Mod1Class1.instance_eval { def mci_eval ; end; puts "Mod1Class1.instance_eval = #{self}, #{self.class}" }
Mod1::Mod1Class1.class_eval { def mcc_eval ; end; puts "Mod1Class1.class_eval = #{self}, #{self.class}" }
Mod1::Mod1Class1.module_eval { def mcm_eval; end; puts "Mod1Class1.module_eval = #{self}, #{self.class}" }

#Metaclasses
class << m; puts "class << m = #{self}, #{self.class}" ; end
class << Mod1::Mod1Class1; puts "class << Mod1Class1 = #{self}, #{self.class}" ; end
class << Mod1; puts "class << Mod1 = #{self}, #{self.class}" ; end

class Mod1::Mod1Class1
  def self.baz
  end
end

def (Mod1::Mod1Class1).fooz
  puts "Mod1Class1.fooz = #{self}, #{self.class}"
end

def m.foo
  puts "m.foo = #{self}, #{self.class}"
end

(Mod1::Mod1Class1).fooz
m.foo

class << m; def bar; end; end;

m1 = Mod1::Mod1Class1.new;

puts "Singleton Methods"
puts "m.singleton_methods = #{m.singleton_methods}"
puts "m1.singleton_methods = #{m1.singleton_methods}"
puts "m.instance_methods = #{m.methods - m.class.superclass.instance_methods}"
puts "m1.instance_methods = #{m1.methods - m1.class.superclass.instance_methods}"
puts "Mod1Class1.singleton_methods = #{(Mod1::Mod1Class1).singleton_methods}"
puts "Mod1Class1.instance_methods = #{(Mod1::Mod1Class1).instance_methods(false)}"
puts "Mod1Class1.methods - Class.instance_methods = #{(Mod1::Mod1Class1).methods - Class.instance_methods}"
