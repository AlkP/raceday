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

  #Finds all rows in collection which can match based on sort, skip, limit
  def self.all(prototype={}, sort={:number => 1}, skip=0, limit=nil)    
  	result=collection.find(prototype)        
  	.sort(sort)        
  	.skip(skip)      
  	if !limit.nil?
  		result = result.limit(limit)
  	end
  	result  
  end

  def initialize(params={})
  	@id=params[:_id].nil? ? params[:id] : params[:_id].to_s
  	@number=params[:number].to_i
  	@first_name=params[:first_name]
  	@last_name=params[:last_name]
  	@gender=params[:gender]
  	@group=params[:group]
  	@secs=params[:secs].to_i
  end

end
