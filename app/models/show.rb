class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network 
  
  def build_network(arg)
    self.network = Network.new(new_network)
  end
  
  
end