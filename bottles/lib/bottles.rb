class Bottles

  def verse(count)
    "#{count} bottles of beer on the wall, " +
      "#{count} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{count - 1} bottle#{(count > 2) ? 's' : ''} of beer on the wall.\n"
  end
end
