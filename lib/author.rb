class Author < Book
  attr_reader   :first_name,
                :last_name,
                :books,
                :name
  def initialize(info)
    @name = "#{info[:first_name]} #{info[:last_name]}"
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
  end


  def write(title, date)
    newb = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: date})
    @books << newb
    return newb
  end
end

