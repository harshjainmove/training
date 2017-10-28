#!/usr/bin/env ruby

  #learn initialize along with self
  #self refers to current object
  # self is required while calling attribute writer,
  # but for any other methods its fine if you directly call instance method and removing self and @ from it

  class Employee

    attr_reader :name, :salary

    def initialize(name = "xyz",salary=100000)
      self.name = name
      @name=name
      self.salary = salary
      @salary=salary

    end

    def name=(name)
      if name == ''
        raise "Value cannot be null"
      end
    end

    def salary=(salary)
      if salary < 100000
        raise "Value cannot be less than 100000"
      end
    end

    def exec
      puts "Name is #{name}"
      puts "Biweekly salary is #{(salary/365.00)*14}"
    end

  end


abc = Employee.new("abcd",200000)

abc.exec


