#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# You are given the following information, but you may prefer to do some
# research for yourself.
#
#    * 1 Jan 1900 was a Monday.
#    * Thirty days has September,
#      April, June and November.
#      All the rest have thirty-one,
#      Saving February alone,
#      Which has twenty-eight, rain or shine.
#      And on leap years, twenty-nine.
#    * A leap year occurs on any year evenly divisible by 4, but not on a
#      century unless it is divisible by 400.
#
# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)?
#-------------------------------------------------------------------------------

# GIVES WRONG ANSWER NEED TO FIX
class Date
    attr_accessor :year, :month, :day, :sundays
    
    def initialize(year, month, day)
        @year = year
        @month = month
        @day = day
        @month_28 = [2]
        @month_30 = [4,6,9,11]
        @month_31 = [1,3,5,7,8,10,12]
        @count = 0
        @sundays = 0
    end
    
    def increment
    
        if @day == 1 and @count % 7 == 0
            @sundays += 1
        end

        if (@month_30.include? @month and @day == 30)
           @day = 1
           @month += 1
        elsif @month_31.include? @month and @day == 31
            @day = 1
            @month += 1
        elsif @month_28.include? @month
            if @year % 4 != 0 and @day == 28
               @day = 1
               @month += 1 
            elsif @year % 4 == 0 and @year % 100 == 0 and @year % 400 != 0 and @day == 28
                @day = 1
                @month += 1
            elsif @year % 4 == 0 and @year % 100 == 0 and @year % 400 == 0 and @day == 29
                @day = 1
                @month += 1
            elsif @year % 4 == 0 and @year % 100 != 0 and @day == 29
                @day = 1
                @month += 1
            else
                @day += 1
            end
        else
            @day += 1
        end
        
        if @month > 12
            @month = 1
            @year += 1
        end
        
        @count += 1
    end
    
    def to_s
        "Year: #{@year} Month: #{@month} Day: #{@day}"
    end
end

d = Date.new(1901,1,1)
until d.year == 2000 and d.month == 12 and d.day == 31
    d.increment
end
puts d.sundays


