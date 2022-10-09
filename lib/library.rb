class Library < Author 
  attr_reader :name, :books, :authors
  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
  end

  def add_book(book)
    @books << book
  end

  def publication_time_frame_for(author)
    timeframe = []
    author.books.each do |book|
      timeframe << book.publication_year.to_i
    end
    timeframe.sort
    # {:start => author.books[0].publication_year, :end => author.books[-1].publication_year}
    {:start => timeframe.sort[0].to_s, :end => timeframe.sort[-1].to_s}
    # almost correct; this method assumes the first book and last book are in chronological order
  end
end
