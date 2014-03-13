# SELF

p 'self global: ' << self.to_s

class User
	attr_accessor :name

	def initialize(name)
		@name = name
		p 'User self: ' << self.to_s
	end

	def compare(object)
		istheSame = (object == self).to_s
		p 'compare, istheSame? ' << istheSame
	end

	def say_hello
		'Hi! My name is ' << name # implicitly 'self' on "name() method"
	end
end

u = User.new("Julio")
u.compare(u)

p 'The name is ' << u.name # attr_accessor :name
p u.say_hello