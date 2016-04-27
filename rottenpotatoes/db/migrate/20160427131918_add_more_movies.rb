class AddMoreMovies < ActiveRecord::Migration
  
  More_Movies = [
  {:title => 'Alandi', :rating => 'G', :release_date => '25-Nov-1992'},
  {:title => 'Alaka', :rating => 'R', :release_date => '25-Nov-2000'},
  {:title => 'Humos', :rating => 'PG-13', :release_date => '25-De-1992'},
  {:title => 'Hero', :rating => 'G', :release_date => '25-Nov-1990'},
  {:title => 'Al', :rating => 'PG', :release_date => '10-June-2000'},
  {:title => 'Queen', :rating => 'G', :release_date => '30-Sep-1982'},
  ]
  
  def up
    More_Movies.each do |movie|
      Movie.create!(movie)
    end
  end
  
  def dowm
    More_Movies.each do |movie|
      Movie.find_by_title_and_rating(movie[:title], movie[:rating]).destroy
    end
  end
end
