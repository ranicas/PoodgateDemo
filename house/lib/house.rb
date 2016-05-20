class House
  THAT_STRINGS = [
    "house that Jack built",
    "malt that lay in",
    "rat that ate",
    "cat that killed",
    "dog that worried",
    "cow with the crumpled horn that tossed",
    "maiden all forlorn that milked",
    "man all tattered and torn that kissed",
    "priest all shaven and shorn that married",
    "rooster that crowed in the morn that woke",
    "farmer sowing his corn that kept",
    "horse and the hound and the horn that belonged to"
  ]

  def recite
    (1..THAT_STRINGS.count).map { |n| line(n) }.join("\n")
  end

  def line(num)
    "This is the #{THAT_STRINGS.first(num).reverse.join(' the ')}.\n"
  end
end
