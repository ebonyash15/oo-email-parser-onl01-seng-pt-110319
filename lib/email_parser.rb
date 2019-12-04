class EmailAddressParser
  def initialize(emails)
    @emails = emails
  end
  def parse
    into=[]
    all_commas=@emails
    while all_commas.include?(" ")
      all_commas.sub!(" ",",")
    end
      seperated=all_commas.split(",")
    seperated.each do |email|
      if !into.include?(email)&&email!=""
        into<<email
      end
    end
    into
  end
end
