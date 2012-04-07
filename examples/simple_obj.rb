require 'ribs'

Ribs::DB.define do |db|
  db.dialect = 'Derby'
  db.uri = 'jdbc:derby:blog'
  db.driver = 'org.apache.derby.jdbc.EmbeddedDriver'
end

class Blog
#  Ribs!
  attr_accessor :title
end

class Post; end
Ribs! :on => Post

blogs = R(Blog).all
p blogs[0].title
