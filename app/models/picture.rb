class Picture
  include Id::Model

  field :title, type: String
  field :description, type: String

  field :path, type: String
end
