require pry
class EmailAddressParser
  def initialize(emails)
    @emails = emails
  end
  def parse
    into=[]
    all_commas=@emails.sub!(" ",",")
    seperated=all_commas.split(",")
    binding.pry
    seperated.each do |email|
      if !into.include?(email)&&email!=","&&email!=""
        into<<email
      end
    end
    into
  end
end
