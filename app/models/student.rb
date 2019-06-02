class Student < ActiveRecord::Base
  def to_s
    self.convert_nil
  end

  def convert_nil
    if first_name == nil && last_name == nil 
      " "
    elsif first_name == nil && last_name != nil
      last_name
    elsif first_name != nil && last_name == nil
      first_name
    else 
      self.first_name + " " + self.last_name
    end
  end
end