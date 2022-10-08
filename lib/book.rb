class Book
    attr_reader :author_first_name,
                :author_last_name,
                :title,
                :publication_date,
                :author
    def initialize(attributes)
        @first_name = attributes[:author_first_name]
        @last_name = attributes[:author_last_name]
        @title = attributes[:title]
        @publication_date = attributes[:publication_date]
        @author = "#{attributes[:author_first_name]} #{attributes[:author_last_name]}"
    end

    def publication_year
        publication_year = []
        publication_year << @publication_date.split
        publication_year.flatten.last
    end
end