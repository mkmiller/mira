# Comic model, faked
class Comic
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
  { id: 1, name: 'Comic A' },
  { id: 2, name: 'Comic B' },
  { id: 3, name: 'Comic C' }
].each do |hash|
  Comic.register Comic.new(hash)
end
