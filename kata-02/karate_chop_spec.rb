require './karate_chop'


describe KarateChop do
  it 'should return not found when search from empty array' do
    karate_chop = KarateChop.new
    karate_chop.chop([], 5).should eq(-1)
  end
end

describe KarateChop do
  it 'should find target from one-element array' do
    karate_chop = KarateChop.new
    karate_chop.chop([1], 1).should eq(0)
  end
  it 'should return not found if target does not in one-element array' do
    karate_chop = KarateChop.new
    karate_chop.chop([1], 2).should eq(-1)
  end
end

describe KarateChop do
  it 'should able to find mid element at once' do
    karate_chop = KarateChop.new
    karate_chop.chop([1, 2, 3], 2).should eq(1)
  end
end

describe KarateChop do
  it 'should able to find element 2nd time' do
    karate_chop = KarateChop.new
    karate_chop.chop([1, 2, 3], 1).should eq(0)
  end
end
