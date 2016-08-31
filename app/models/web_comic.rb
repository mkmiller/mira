# Web comic model, faked
class WebComic
  include ActiveModel::Model

  @@comics = []

  attr_accessor :id, :name

  def self.all
    @@comics
  end

  def self.find(id)
    id = id.to_i
    @@comics.drop_while { |comic| comic.id != id }.first
  end

  def self.register(comic)
    @@comics << comic
  end
end

[
  { id: 1, name: 'WebComic A' },
  { id: 2, name: 'WebComic B' },
  { id: 3, name: 'WebComic C' }
].each do |hash|
  WebComic.register WebComic.new(hash)
end
