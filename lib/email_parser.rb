# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initialize(emails)
    @emails = emails
  end
  def parse
    into=[]
    seperated=@emails
    while seperated.include?(", "||","||" ")
      case seperated.include?("n")
      when n=","
        seperated = @emails.split(",")
      when n=", "
        seperated = @emails.split(", ")
      else
        seperated = @emails.split(" ")
    end
    seperated.each do |email|
      if !into.include?(email)
        into<<email
      end
    end
    into
  end
end
