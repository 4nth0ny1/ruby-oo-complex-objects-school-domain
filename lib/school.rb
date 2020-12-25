class School 
    attr_accessor :roster  
    
    def initialize(name)
      @name = name
      @roster = Hash.new
    end

    def add_student(name, grade)
      if(roster[grade])
          roster[grade] << name
      else 
          roster[grade] = []
          roster[grade] << name
      end
      roster
      # binding.pry
  end

  def grade(grade)
      roster[grade]
  end

  def sort 
      roster.each do |key, value|
          value.sort!
      end
      roster.sort.to_h
  end
   
  end 