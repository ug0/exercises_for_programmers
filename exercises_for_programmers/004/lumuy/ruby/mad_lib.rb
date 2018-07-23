class MadLib
  @noun = ''
  @verb = ''
  @adjective = ''
  @adverb = ''

  class << self
    def get_word(word)
      puts "Enter a #{word}: "
      puts "Need enter a #{word}: " while (res = gets.chomp).empty?
      res
    end
  end

  def input
    @noun      = self.class.get_word('noun')
    @verb      = self.class.get_word('verb')
    @adjective = self.class.get_word('verb')
    @adverb    = self.class.get_word('verb')
  end

  def output
    puts ['So many peple', @verb, @adjective, @noun, @adverb].join(' ')
  end

  def result
    input
    output
  end
end

MadLib.new.result
