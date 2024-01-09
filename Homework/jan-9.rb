# Object Oriented Programming
# A class is a blue print for creating objects
# class Book
#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages =pages
#   end

#   def print_title
#     puts @title
#   end

#   def print_author
#     puts @author
#   end

#   def print_pages
#     puts @pages
#   end
# end

# book = Book.new("The Pragmatic Programmer", "Andy Hunt and Dave Thomas", 352)

# book.print_title
# book.print_author
# book.print_pages

# class Animal
#   def initialize(name)
#     @name = name
#   end

#   def speak
#     puts @name
#   end
# end

# animal = Animal.new("dog")

# animal.speak

# Inheritance: define a class based on another Class

# class Item
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end

#   def print_name
#     puts @name
#   end

#   def print_price
#     puts @price
#   end
# end

# class Book < Item # book class inherits all properties and behaviors from item class
#   def initialize(name, price, author, pages)
#     super(name, price) # calls the superclass's(Item) methods
#     @author = author
#     @pages = pages
#   end

#   def print_author
#     puts @author
#   end

#   def print_pages
#     puts @pages
#   end
# end

# book = Book.new('The Pragmatic Programmer', 29.95, 'Andy Hunt and Dave Thomas', 352)

# book.print_name
# book.print_price
# book.print_author
# book.print_pages

# class Animal
#   def initialize(name)
#     @name = name 
#   end
#   def speak
#     puts @name
#   end
# end

# class Dog < Animal
#   def initialize(name)
#   super(name)
#   end
# end

# dog = Dog.new("dog")
# dog.speak

# class Cat < Animal
#   def initialize(name)
#   super(name)
#    end
#  end

# cat = Cat.new('cat')
# cat.speak

# Polymorphism is the ability of an object to take on many forms

# class Animal
#   def speak
#     puts "I am an animal"
#   end
# end

# class Dog < Animal
#   def speak
#     puts "I am a dog"
#   end
# end

# class Cat < Animal
#   def speak
#     puts "I am a cat"
#   end
# end

# def speak(animal)
#   animal.speak
# end

# animal = Animal.new

# speak(animal)

# dog = Dog.new

# speak(dog)

# cat = Cat.new

# speak(cat)

# Encapsulation and Access Modifiers
# the process of hiding the internal details of an object so that it can only be accessed through a well defined interface

# class Book
#     def initialize(title, author, pages)
#       @title = title
#       @author = author
#       @pages = pages
#     end

#   def print_title
#     puts @title
#   end

#   def print_author
#     puts @author
#   end

#   def print_pages
#     puts @pages
#   end
# end

# book = Book.new("The Pragmatic Programmer", "Andy Hunt and Dave Thomas", 352)

# book.print_title
# book.print_author
# book.print_pages

#Access modifiers are keywords that control the visibility of methods and variables they are: public, protected and private
  #public: accessed by anyone
  #protected: only accessed by the class that defines them and its subclasses
  #private: only be accessed by the class that defines them

# class Book
#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end

#   def print_title
#     puts @title
#   end

#   def print_author
#     puts @author
#   end

#   def print_pages
#     puts @pages
#   end

#   def print_details_private
#     puts @title
#     puts @author
#     puts @pages
#   end
# end

# book = Book.new("The Pragmatic Programmer", "Andy Hunt and Dave Thomas", 352)
# book.print_title
# book.print_author
# book.print_pages
# book.print_details_private

#this did not work like the homework said.... would not puts just book.print_details 


# class Animal
#   def initialize(name)
#     @name = name
#   end

#   def print_details
#      puts @name
#   end

#   private

#   def print_details_private
#     puts @name
#   end
# end

# class Dog < Animal
# end

# animal = Animal.new("animal")

# animal.print_details

# animal.print_details_private

# dog = Dog.new('dog')
# dog.print_details_private

# class Animal
#     def initialize(name)
#       @name = name 
#     end
  
#     def print_details
#       puts @name
#     end

#      private
  
#     def print_details_private
#       puts @name
#     end
# end

# animal = Animal.new("animal")

# animal.print_details
# animal.print_details_private

# class Dog < Animal
# end

# dog = Dog.new('dog')

# dog.print_details
# dog.print_details_private

#Getters & Setters
#methods used to get and set the value of instance variables
# attr_accessor 

#Modules & Mixins: used to group related mnethods, classes and constants together. 

# module Math
#   def self.square(x)
#     x * x
#   end
# end

# class Book
#   include Math

#   attr_accessor :title, :author, :pages

#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end
# end

# book = Book.new("The Pragmatic Programmer", "Andy Hunt and Dave Thomas", 352)

# puts book.title # => The Pragmatic Programmer

# puts book.author # => Andy Hunt and Dave Thomas

# puts book.pages # => 352

# puts book.square(2) # => 4

# module Math
#   def self.square(x)
#     x * x
#   end
# end

# class Book
#   extend Math

#   attr_accessor :title, :author, :pages

#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end
# end


# puts Book.square(2)

# class Book
#   @@count = 0

#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages

#     @@count += 1
#   end

#   def self.count
#     @@count
#   end
# end

# book1 = Book.new("The Pragmatic Programmer", "Andy Hunt and Dave Thomas", 352)

# book2 = Book.new("The Pragmatic Programmer 2", "Andy Hunt and Dave Thomas", 352)

# puts Book.count

#Self in a class method
class User

  def self.say_hello
    puts "Hello"
  end
end

User.say_hello

#Self in an instance Method
class User
  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Hello, my name is #{self.name}"
  end

  def name
    @name
  end
end

user = User.new("Alice")

user.say_hello