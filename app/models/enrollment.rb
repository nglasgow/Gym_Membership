class Enrollment < ActiveRecord::Base
  attr_accessible :type

  belongs_to :user
  belongs_to :training
end
