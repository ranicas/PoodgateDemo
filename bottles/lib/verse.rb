class Verse
  attr_reader :bottle

  def self.number(n)
    self.new(Bottle.new(n))
  end

  def initialize(bottle)
    @bottle = bottle
  end

  def head
    "#{bottle.count.capitalize} #{bottle.noun} of beer on the wall, " +
      "#{bottle.count} #{bottle.noun} of beer.\n"
  end

  def tail
    bottle.number.zero? ? closing : bridge
  end

  def bridge
    "Take #{bottle.identifier} down and pass it around, " +
      "#{bottle.next.count} #{bottle.next.noun} of beer on the wall.\n"
  end

  def closing
    "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
  end

  def to_s
    head + tail
  end
end
