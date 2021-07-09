require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    raw = self.split(/\. |\! |\? /)
    return 0 if raw == []
    # puts raw.size
    returns = raw.size
    # puts raw.last[-1]
    # puts raw.last[-1].match(/\.|\!|\?/)
    returns -= 1 if raw.last[-1].match(/\.|\!|\?/) == nil #!= "." && "?" && "!"
    #   puts "hi              ht            ht                ht           ht"
    #   returns = returns - 1
    # end
    # returns = 0 if returns == -1
    # binding.pry
    returns
  end
end

puts "Y. Yout. ty! tyh??.".count_sentences
