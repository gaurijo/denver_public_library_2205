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
    {:start => author.books[0].publication_date, :end => author.books[-1].publication_date}
  end
end
