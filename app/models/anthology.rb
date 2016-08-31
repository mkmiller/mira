# Anthology model, faked
class Anthology
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
  { id: 1, name: 'Anthology A' },
  { id: 2, name: 'Anthology B' },
  { id: 3, name: 'Anthology C' }
].each do |hash|
  Anthology.register Anthology.new(hash)
end
