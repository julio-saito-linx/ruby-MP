# SELF

p 'self global: ' << self.to_s

class User
	def initialize
		p 'User self: ' << self.to_s
	end

	def compare(object)
		istheSame = (object == self).to_s
		p 'compare, istheSame? ' << istheSame
	end
end

u = User.new
u.compare(u)