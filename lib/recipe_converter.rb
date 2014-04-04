class RecipeConverter

  def initialize(array_of_hashes)
  @array = array_of_hashes
  end

  def to_tablespoons
  @array.each {|hash| hash.each {|ingredient, grams| hash[ingredient] = grams/15}}
  end

  def to_cups
  @array.each {|hash| hash.each {|ingredient, tbs| hash[ingredient] = tbs/16}}
  end

end