#!/usr/bin/env ruby

  #learn initialize along with inheritance
  # initialize works like just any method in ruby. Hence, we can use super in it.

  class Employee

    attr_reader :name

    def initialize(name = "xyz")
      self.name = name
      @name=name
    end

    def name=(name)
      if name == ''
        raise "Value cannot be null"
      end
    end


    def exec
      puts "Name is #{name}"
    end

  end

  class SalariedEmployee < Employee

    attr_reader :salary

    def initialize(name = "abc",salary=100000)
      super(name)
      self.salary = salary
      @salary=salary
    end

    def salary=(salary)
      if salary < 100000
        raise "Value cannot be less than 100000"
      end
    end

    def exec
      super
      puts "Biweekly salary is #{(salary/365.00)*14}"
    end

  end

  class HourlyEmployee < Employee

    attr_reader :hourly_pay, :hours

    def initialize(name = "abc",hourly_pay = 25,hours=20)
      super(name)
      self.hourly_pay = hourly_pay
      @hourly_pay=hourly_pay
      self.hours = hours
      @hours=hours
    end

    def hourly_pay=(hourly_pay)
      if hourly_pay < 11
        raise "Value cannot be less than minimum wage"
      end
    end

    def hours=(hours)
      if hours < 5
        raise "Value cannot be less than 5"
      end
    end

    def exec
      super
      puts "Biweekly salary is #{hourly_pay*hours*2}"
    end

  end

a = SalariedEmployee.new("first")
a.exec

b = HourlyEmployee.new("jjj",11,10)
b.exec


