class EmailAddressParser
  def initialize(emails)
    @emails = emails
  end
  def parse
    into=[]
  p  all_commas=@emails.sub!(" ",",")
  p  seperated=all_commas.split(",")
    seperated.each do |email|
      if !into.include?(email)&&email!=","&&email!=""
        into<<email
      end
    end
    into
  end
end
