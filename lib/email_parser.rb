# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initalize(emails)
    @emails = emails
  end
  def parse
    into=[]
    @emails.split(" ").each||@emails.split(",").each do |email|
      if !into.include?(email)
        into<<email
      end
    end
    into
  end
end
