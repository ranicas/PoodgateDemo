require_relative 'bottle'
require_relative 'verse'

class Bottles
  def verse(n)
    Verse.number(n).to_s
  end

  def verses(m, n)
    (n..m).to_a.reverse.map { |i| verse(i) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
