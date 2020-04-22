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
    #\W+ is a Regexp pattern that means "One or more non-word characters."
    text.split(/[.,!?]/).delete_if { |string| string == ""}
    self.size
  end
end