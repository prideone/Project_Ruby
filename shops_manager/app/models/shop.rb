class Shop < ActiveRecord::Base
	def self.search(search)
		if search
			find(search)
    	else
    		
    	end
    end
end
