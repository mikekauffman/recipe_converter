class RecipeConverter

  def initialize(array_of_hashes)
  @array = array_of_hashes
  end

  def to_tablespoons
  @array.each {|hash| hash.each {|ing, grams| hash[ing] = grams/15}}
  end

  def to_cups
  @array.each {|hash| hash.each {|ing, tbs| hash[ing] = tbs/16}}
  end

end