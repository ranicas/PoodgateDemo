class Bottles

  def song
    verses(99,0)
  end

  def verses(start_count, end_count)
    (end_count..start_count).map { |v| verse(v) }
                            .reverse.join("\n")
  end

  def verse(count)
    "#{quantity(count)} of beer on the wall, " +
      "#{quantity(count).downcase} of beer.\n" +
      line_three(count) +
      "#{new_count(count)} of beer on the wall.\n"
  end

  private

  def quantity(count)
    case count
    when 0 then "No more bottles"
    when 1 then "1 bottle"
    else "#{count} bottles"
    end
  end

  def line_three(count)
    case count
    when 0
      "Go to the store and buy some more, "
    when 1
      "Take it down and pass it around, "
    else
      "Take one down and pass it around, "
    end
  end

  def new_count(count)
    case count
    when 0 then "99 bottles"
    when 1 then "no more bottles"
    when 2 then "1 bottle"
    else "#{count - 1} bottles"
    end
  end

end
