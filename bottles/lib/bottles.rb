class Bottles

  def verse(count)
    if count == 0
      "No more bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
    elsif count == 1
      "1 bottle of beer on the wall, " +
        "1 bottle of beer.\n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
    else
      "#{count} bottles of beer on the wall, " +
        "#{count} bottles of beer.\n" +
        "Take one down and pass it around, " +
        "#{count - 1} bottle#{(count > 2) ? 's' : ''} of beer on the wall.\n"
    end
  end
end
