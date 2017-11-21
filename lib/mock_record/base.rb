module MockRecord
	class Base
		attr_accessor :id
		def initialize
			@id = 0
		end
		def self.primary_key
			0
		end
		def self.base_class
			self
		end
		def self.name
			self.to_s
		end
		def _read_attribute attribute
			nil
		end
		def marked_for_destruction?
			false
		end
		def destroyed?
			false
		end
		def new_record?
			false
		end
	end
end
