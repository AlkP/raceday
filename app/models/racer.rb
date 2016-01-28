class Racer
  include Mongoid::Document

  #Shortcut to default database
  def self.mongo_client
  	db = Mongo::Client.new('mongodb://localhost:27017')
  end

  #Returns db collection holding Racer
  def self.collection
  	self.mongo_client['racer']
  end
end
