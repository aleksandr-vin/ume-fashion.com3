require 'rubygems'
require 'data_mapper'
require 'dm-sqlite-adapter'

class Item
  include DataMapper::Resource

  property :id,         Serial
  property :title,      String
  property :body,       Text
  property :created_at, DateTime
end

class Category
  include DataMapper::Resource

  property :id,         Serial
  property :name,       String
end

class Categorization
  include DataMapper::Resource

  property :id,         Serial
  property :created_at, DateTime

  belongs_to :category
  belongs_to :item
end

class Item
  has n, :categorizations
  has n, :categories, :through => :categorizations
end

class Category
  has n, :categorizations
  has n, :items,      :through => :categorizations
end


DataMapper.auto_upgrade!
DataMapper.finalize
