#!/usr/bin/env ruby

  # Using Class methods and factory methods using selftest7.rb

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
    end

    def salary=(salary)
      if salary < 100000
        raise "Value cannot be less than 100000"
      end
      @salary=salary
    end

    def exec
      super
      puts "Biweekly salary is #{(salary/365.00)*14}"
    end

  end

  class HourlyEmployee < Employee

    attr_reader :hourly_pay, :hours

    def self.security_guard(name)
      HourlyEmployee.new(name,20,20)
    end

    def self.cook(name)
      HourlyEmployee.new(name,15,15)
    end

    def initialize(name = "abc",hourly_pay = 25,hours=20)
      super(name)
      self.hourly_pay = hourly_pay

      self.hours = hours

    end

    def hourly_pay=(hourly_pay)
      if hourly_pay < 11
        raise "Value cannot be less than minimum wage"
      end
      @hourly_pay=hourly_pay
    end

    def hours=(hours)
      if hours < 5
        raise "Value cannot be less than 5"
      end
      @hours=hours
    end

    def exec
      super
      puts "Biweekly salary is #{hourly_pay*hours*2}"
    end

  end

    a = SalariedEmployee.new("first")
    a.exec

    b = HourlyEmployee.security_guard("Michael")
    b.exec

  b = HourlyEmployee.security_guard("Michael2")
  b.exec

    c = HourlyEmployee.cook("John")
    c.exec

  c = HourlyEmployee.cook("John2")
  c.exec


