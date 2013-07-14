class Gallery
  include Id::Model

  field :title
  field :thumbnail
  has_many :pictures

  class << self

    def picture(title, description, path)
    end

    def missed_opportunity
      Gallery.new(
        title: 'Missed Opportunity',
        pictures: [
          picture("cat", "a lovely cat", "cat.jpg"),
          picture("cat", "a lovely cat", "cat.jpg")
      ])
    end

    def fauna
    end

    def editorial
    end

    def book_cover
    end

    def toothpaste
    end

    def dogs_dinner
    end

    def misc
    end
  end
end
