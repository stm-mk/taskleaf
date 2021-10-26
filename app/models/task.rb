class Task < ApplicationRecord
    validates:name,presence:true
    validates:name,length:{maximum:30}
    validate:validate_name_not_inculuding_comma

    private

    def validate_name_not_inculuding_comma
        errors.add(:name,"にカンマを含めることはできません") if name&.include?(",")
    end
end
