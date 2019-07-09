class Country < ApplicationRecord
 has_many :states , :dependent => :destroy
 accepts_nested_attributes_for :states
end
