class TwoWordValidator < ActiveModel::EachValidator
    def validate_each(record,attribute,value)
        #record is the full sneaker object 
        #attribute is color or what ever we apply this validation too, it could also be condition example 
        #value is what ever color was typed in 
        #in custome validations check fro the negative 
        if value.split(" ").length < 2
            #add error here 
            record.errors.add(attribute,"need to be atleast two words")

        end
    end 
end
