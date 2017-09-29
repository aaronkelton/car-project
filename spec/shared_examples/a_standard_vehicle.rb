shared_examples_for('a standard vehicle') do

  describe("attributes") do

    # "subject" is implicitly available when
    # using the classname Car instead of 'Car' string
    # subject { Car.new }

    # use "subject" instead of "let()"
    # if variable is subject of example
    # let(:car) { Car.new }

    # "let" is better than "before" for
    # setting up instance variables
    # before(:example) do
    #   @car = Car.new
    # end

    it("allows reading and writing for :make") do
      subject.make=('Test')
      expect(subject.make).to(eq('Test'))
    end

    it "allows reading and writing for :year" do
      subject.year = 9999
      expect(subject.year).to eq(9999)
      # (subject.year).should eq(9999)
    end

    it "allows reading and writing for :color" do
      subject.color = 'red'
      expect(subject.color).to eq('red')
    end

    it "allows reading for :wheels" do
      expect(subject.wheels).to eq(4)
    end

    it "allows writing for :doors"
  end

end
