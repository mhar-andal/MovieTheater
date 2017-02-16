require 'rails_helper'

describe Movie do

  movie = Movie.new(title: "John Wick: Chapter 2", runtime: 122, imdb_link: "http://www.imdb.com/title/tt4425200/", rotten_tomatoes_link: "https://www.rottentomatoes.com/m/john_wick_chapter_2/")

  describe "movies" do
    context 'has movie name' do
      it { expect(movie.title).to eq "John Wick: Chapter 2" }
    end

    context 'has a runtime' do
      it { expect(movie.runtime).to eq 122}
    end

    context 'has a imdb link' do
      it { expect(movie.imdb_link).to eq "http://www.imdb.com/title/tt4425200/" }
    end

    context 'has a rotten tomatoes link' do
      it { expect(movie.rotten_tomatoes_link).to eq "https://www.rottentomatoes.com/m/john_wick_chapter_2/" }
    end
  end
end
