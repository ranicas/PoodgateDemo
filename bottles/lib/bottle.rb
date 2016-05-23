class Bottle
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def count
    number == 0 ? 'no more' : number.to_s
  end

  def noun
    number == 1 ? 'bottle' : 'bottles'
  end

  def identifier
    number == 1 ? 'it' : 'one'
  end

  def next
    self.class.new(number - 1)
  end
end
