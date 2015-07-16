class Student < ActiveRecord::Base

  validates_each :first_name, :last_name do |record, attr, value|
    record.errors.add(attr, 'Name must start with a upper case') if value =~
      /\A[[:lower:]]/
  end
  validates :email, presence: true

  validates :cell_phone, :home_phone, :work_phone, :presence => true,
                                                   :numericality => true,
                                                   :length => { :minimum => 10 }
end

