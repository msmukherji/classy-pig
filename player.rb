class Player

  def initialize name
    @name = name
    @score = 0 
  end
  
  def add_to_score value
    @score += value
  end

  def name
    @name
  end

  def score
    @score
  end

end