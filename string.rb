#Extending string class
class String
	#ifentifying all popular strings referred as boolean and converting it to boolean
	def to_bool
		return true   if self == true   || self =~ (/(true|t|yes|y|1)$/i)
		return false  if self == false  || self =~ (/(false|f|no|n|0)$/i)
		return false
	end
end

