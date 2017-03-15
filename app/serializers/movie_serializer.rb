class MovieSerializer < ApplicationSerializer
  attributes :id, :title, :description, :poster_link

  self.root = false
end
