# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_list

  def initialize(email_list)
    @email_list = email_list
  end

  def parse
    @email_list = @email_list.split(", ")
    print @email_list
    array = []
    @email_list.each do |email|
      array << email.split(" ")
    end
   return array.flatten.uniq
   
    # array = email_list.split.collect do |addresses|
              # addresses.split(",")
            # end
    # (array.flatten)
  end


end
