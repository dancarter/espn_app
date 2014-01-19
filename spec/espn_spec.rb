# /spec/espn_spec.rb
describe ESPN do
  before do
    @espn = ESPN.new
  end

  it "is the right class" do
    @espn.should.be.kind_of(ESPN)
  end

  it "can get a response from ESPN now" do
    @espn.now do |response|
      response.should.be.kind_of(Hash)
      resume
    end
    wait {} # wait for the async request to finish
  end
end
