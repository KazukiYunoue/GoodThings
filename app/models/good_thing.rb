class GoodThing < ActiveRecord::Base
  belongs_to :user

  validates :name,
    :presence => true,
    :length => {:maximum => 20}
end
