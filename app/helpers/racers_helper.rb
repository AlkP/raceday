module RacersHelper
	def toRacer(value)
		return value.is_a?(Racer) ? value :
	end
end