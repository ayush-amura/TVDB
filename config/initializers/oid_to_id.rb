module BSON
  # Class ObjectId is a class in BSON module Used in mongoid 
  #
  # @author Piyush Wani <piyush.wani@amuratech.com>
  #
  class ObjectId
    def to_json(*)
      to_s.to_json
    end
    
    def as_json(*)
      to_s.as_json
    end
  end
end 