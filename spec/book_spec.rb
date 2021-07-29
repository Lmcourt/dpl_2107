require './lib/book'

RSpec.describe Book do
  it 'exists and has attributes' do
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    expect(book).to be_a(Book)
    expect(book.title).to eq("To Kill a Mockingbird")
  end

  it 'has a full name' do
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    expect(book.author).to eq("Harper Lee")
  end

  it 'has a year' do
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    expect(book.publication_year).to eq("1960")
  end

  # it 'can write' do
  #   jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
  #
  #   expect(jane_eyre.class).to be_a(Book)
  # end
end
