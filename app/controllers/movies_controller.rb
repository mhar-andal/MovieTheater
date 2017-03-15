class MoviesController < ApplicationController
  include MoviesHelper
  def index
    @movies = Movie.all
    respond_to do |format|
      format.html do
        render component: 'Movie', props: {
          movies: JSON.parse(@movies.to_json(:methods => [:showings]))
          }, tag: 'div'
      end
      format.json { render json: @movies.to_json(:include => :showings)}
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

  def prepareArray(array)
    ActiveModel::ArraySerializer.new(array, each_serializer: serializer(array))
  end

  def prepare(resource)
    serializer(resource).new(resource)
  end

  def serializer(resource)
      if resource.respond_to? :name
        "#{resource.name}Serializer".safe_constantize
      else
        "#{resource.class}Serializer".safe_constantize
      end
    end
end
