class Gallery
  include Id::Model

  field :id
  field :title
  field :thumbnail

  has_many :pictures

  class << self

    def all
      @all ||= [
        missed_opportunity,
        editorial,
        book_cover,
        dogs_dinner,
        toothpaste,
        misc,
        fauna
      ]
    end

    def missed_opportunity
      Gallery.new(
        id: 1,
        name: 'Missed opportunites',
        pictures: [
          Picture.new(path: 'glance.jpg'),
          Picture.new(path: 'coffee.jpg'),
          Picture.new(path: 'indie.jpg')
      ])
    end

    def fauna
      Gallery.new(
        id: 3,
        name: 'Fauna',
        pictures: [
          Picture.new(path: 'sneaky_yellow.jpg'),
          Picture.new(path: 'dogwalker.jpg'),
          Picture.new(path: 'bruce.jpg'),
          Picture.new(path: 'sunshine.jpg'),
          Picture.new(path: 'butterfly2.jpg'),
          Picture.new(path: 'butterfly1.jpg')
      ])
    end

    def editorial
      Gallery.new(
        id: 5,
        name: 'Editorial',
        pictures: [
          Picture.new(path: 'printfinal.jpg'),
          Picture.new(path: 'gamblefinal.jpg'),
          Picture.new(path: 'datingsmaller.jpg'),
          Picture.new(path: 'retirement_web.jpg')
      ])
    end

    def book_cover
      Gallery.new(
        id: 4,
        name: 'Book covers',
        pictures: [
          Picture.new(path: 'mummyfinal.jpeg'),
          Picture.new(path: 'autumnchanged.jpg'),
          Picture.new(path: 'spring.jpg'),
          Picture.new(path: 'winter.jpg'),
          Picture.new(path: 'summeraltered.jpg')
      ])
    end

    def toothpaste
      Gallery.new(
        id: 7,
        name: 'Toothpaste',
        pictures: [
          Picture.new(path: 'FD_toothpaste5.jpg'),
          Picture.new(path: 'FD_toothpaste4.jpg'),
          Picture.new(path: 'FD_toothpaste3.jpg'),
          Picture.new(path: 'FD_toothpaste1.jpg'),
          Picture.new(path: 'FD_toothpaste2.jpg')
      ])
    end

    def dogs_dinner
      Gallery.new(
        id: 2,
        name: "A Dog's Dinner",
        pictures: [
          Picture.new(path: 'orchid.jpg'),
          Picture.new(path: 'end_paper.jpg'),
          Picture.new(path: 'plug.jpg'),
          Picture.new(path: 'bathroom.jpg'),
          Picture.new(path: 'back_paper.jpg'),
          Picture.new(path: 'winow.jpg'),
          Picture.new(path: 'matt.jpg'),
          Picture.new(path: 'room2.jpg')
      ])
    end

    def misc
      Gallery.new(
        id: 6,
        name: "Misc",
        pictures: [
          Picture.new(path: 'card_blank.jpg'),
          Picture.new(path: 'scrapbook.jpg'),
          Picture.new(path: 'plork.jpg'),
          Picture.new(path: 'FINAL_SLEEPSfront.jpg')
      ])
    end
  end
end
