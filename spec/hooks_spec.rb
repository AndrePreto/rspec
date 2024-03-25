RSpec.describe 'Before and After Hooks' do 
  
  # Runs before each test inside the "it" keyword inside this "context" and all nested "contexts"
  before(:example) do 
    puts 'Before outer example'
  end

  # Runs after each test inside the "it" keyword inside this "context" and all nested "contexts"
  after(:example) do 
    puts 'After outer example'
  end

  # Runs before the context where is internally inside - Runs before this "describe" block
  before(:context) do 
    puts 'Before outer context hook'
  end

  # Runs after the context where is internally inside - Runs before this "describe" block
  after(:context) do 
    puts 'After outer context hook'
  end
  
  context 'random context' do 

    # Nested before example hook - Runs before all tests inside this "context" block 
    before(:example) do 
      puts 'Before inner example'
    end

    # Nested after example hook - Runs after all tests inside this "context" block 
    after(:example) do 
      puts 'After inner example'
    end

    # Nested before context hook - Runs before this "context" block
    before(:context) do 
      puts 'Nested before context hook'
    end

    # Nested after context hook - Runs before this "context" block
    after(:context) do 
      puts 'Nested after context hook'
    end

    it 'is just a random example' do 
      expect(10 + 10).to(eq(20))
    end
  end

  it 'is just another random example' do 
    expect(2 * 5).to(eq(10))
  end
end