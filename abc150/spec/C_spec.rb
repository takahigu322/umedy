require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 3 2\n3 1 2\n"' do
    io = IO.popen("ruby abc150/C.rb", "w+")
    io.puts("3\n1 3 2\n3 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "8\n7 3 5 4 2 1 6 8\n3 8 2 5 4 6 7 1\n"' do
    io = IO.popen("ruby abc150/C.rb", "w+")
    io.puts("8\n7 3 5 4 2 1 6 8\n3 8 2 5 4 6 7 1\n")
    io.close_write
    expect(io.readlines.join).to eq("17517\n")
  end

  it 'test with "3\n1 2 3\n1 2 3\n"' do
    io = IO.popen("ruby abc150/C.rb", "w+")
    io.puts("3\n1 2 3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
