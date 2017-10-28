#!/usr/bin/env ruby


  class Employee

    attr_reader :name, :salary


    def initialize(name = "xyz",salary=100000)
      if name == ''
        raise "Value cannot be null"
      end
      @name=name
      if salary < 100000
        raise "Value cannot be lesaa than 100000"
      end
      @salary=salary
    end

    def exec
      puts "Name is #{@name}"
      puts "Biweekly salary is #{(salary/365.00)*14}"
    end

  end


abc = Employee.new("harsh",)

abc.exec


