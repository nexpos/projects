require_relative "../record.rb"

describe "Record" do
  it "instatntiates an object with name and artist" do
    record = Record.new("Thriller", "Michael Jackson")
    expect(record).to be_an_instance_of(Record)
  end
  it "returns a string with the record name" do
    record = Record.new("Kind of Blue", "Miles Davis")
    expect(record.name).to eq("Kind of Blue")
  end
  it "returns a string with the record artist" do
    record = Record.new("Rubber Soul", "The Beatles")
    expect(record.artist).to eq("The Beatles")
  end
end
