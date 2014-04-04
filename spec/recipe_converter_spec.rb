require 'recipe_converter'

describe RecipeConverter do

  it 'converts units of measure from grams to tbs within an array of hashes' do
    g_hash = RecipeConverter.new([{:cinnamon => 15, :sugar => 30, :flour => 45, :starch => 90}])
    expect(g_hash.to_tablespoons).to eq [{:cinnamon => 1, :sugar => 2, :flour => 3, :starch => 6}]
  end

  it 'converts units of measure from tbs to cups within an array of hashes' do
    tbs_hash = RecipeConverter.new([{:cinnamon => 16, :sugar => 32, :flour => 48, :starch => 96}])
    expect(tbs_hash.to_cups).to eq [{:cinnamon => 1, :sugar => 2, :flour => 3, :starch => 6}]
  end

end