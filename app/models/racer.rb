class Racer
  include Mongoid::Document
  attr_accessor :id, :number, :first_name, :last_name, :gender, :group, :secs


  #Shortcut to default database
  def self.mongo_client
  	db = Mongo::Client.new('mongodb://localhost:27017')
  end

  #Returns db collection holding Racer
  def self.collection
  	self.mongo_client['racers']
  end

  #Finds all rows in collection which can match based on protoype, sort, skip, limit
  def self.all(prototype={...}, sort={...}, skip=0, limit=nil)

  end
end
