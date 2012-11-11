class User < ActiveRecord::Base
  attr_accessible :age, :name
  validates :age, :name, :presence => true
  validates :age, :numericality => { :greater_than => 12 }
  validates :name, :uniqueness => { :message => 'someone already took' }
end
