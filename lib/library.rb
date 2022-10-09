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
    author = Author.new({first_name: author.first_name,
      last_name: author.last_name})
    @books = author.books
    @authors << author
  end
end
