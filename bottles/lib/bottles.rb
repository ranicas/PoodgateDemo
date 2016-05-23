
class Bottles
  def song
    verses(99, 0)
  end

  def verses(count, last)
    output = []
    while count >= last
      output << verse(count)
      count -= 1
    end
    output.join("\n")
  end

  def verse(count)
    return empty_verse if count == 0
    "#{bottle_phrase(count)} of beer on the wall, #{bottle_phrase(count)} of beer.\n"\
    "#{take_phrase(count)} down and pass it around, #{bottle_phrase(count - 1)} of beer on the wall.\n"
  end

  def empty_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n"\
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def bottle_phrase(count)
    count = 'no more' if count == 0
    word = (count != 1) ? 'bottles' : 'bottle'
    "#{count} #{word}"
  end

  def take_phrase(count)
    (count == 1) ? 'Take it' : 'Take one'
  end
end
