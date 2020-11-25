# code here!
require "pry"
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end 
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # first try
        # temp_roster = {}
        # @roster.collect do |grade, students|
        #     temp_roster[grade] = students.sort
        # end
        # temp_roster

        @roster.collect {|grade, students| [grade, students.sort]}.to_h
    end
end