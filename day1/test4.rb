#!/usr/bin/env ruby


  class Employee

    attr_reader :name, :salary

    def name=(name)
      if name == ''
        raise "Value cannot be null"
      end
      @name=name
    end

    def salary=(salary)
      if salary < 10000
        raise "Value cannot be lesaa than 10000"
      end
      @salary=salary
    end

    def details
      p @name ,@salary
    end

  end


abc = Employee.new()
abc.salary = 15000
abc.details







