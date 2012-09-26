#Extending Tire::Results::Item
class Tire::Results::Item
	#method to convert tire search result containing nested tire objects to a hash
    def to_nested_hash
        input = self
        input = input.to_hash
        input.each do |key, value|
            if ['Tire::Results::Item', 'Hash'].include?value.class.to_s
                value = value.to_nested_hash
                input[key.to_sym] = value
            end
        end
        return input
    end
end
