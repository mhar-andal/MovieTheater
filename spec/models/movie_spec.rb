require 'rails_helper'

describe Movie do
  let(:movie) { Movie.new("John Wick: Chapter 2", 122, "http://www.imdb.com/title/tt4425200/", "https://www.rottentomatoes.com/m/john_wick_chapter_2/") }

  describe "movies" do
    context 'has movie name' do
      it { movie.title.to eq "John Wick: Chapter 2" }
    end

    context 'has a runtime' do
      it { movie.runtime.to eq 122}
    end

    context 'has a imdb link' do
      it { movie.imdb.to eq "http://www.imdb.com/title/tt4425200/" }
    end

    context 'has a rotten tomatoes link' do
      it { movie.imdb.to eq "http://www.imdb.com/title/tt4425200/" }
    end
  end
end
