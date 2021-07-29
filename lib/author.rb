class Author

  @@jane_eyre = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre", publication_date: "October 16, 1847"})

  attr_reader :first_name,
              :last_name,
              :books,

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
    # @jane_eyre = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre", publication_date: "October 16, 1847"})
  end

  def name
    @first_name + " " + @last_name
  end

  def self.write(title, date)
    @@jane_eyre[:title] = title, @@jane_eyre[:publication_date] = date
  end
end
