def rand_seat_capacity
  seating_capacity = [20, 30, 36].sample
end

letters = ["A", "B", "C", "D", "E", "F", "G"]

10.times {Cinema.create(seating_capacity: rand_seat_capacity)}

Cinema.all.each do |cinema|
  for i in (0..cinema.seating_capacity)
    Seat.create(cinema: cinema, seat_identifier: "#{letters[i/10]}#{(i%10) + 1}")
  end
end


Movie.create(title: "Split", description: "An outing takes a sinister turn for three teenage friends (Anya Taylor-Joy, Haley Lu Richardson, and Jessica Sula) when they are kidnapped by a ruthless stranger (James McAvoy) and imprisoned in his basement. They soon learn that their captor has multiple-personality disorder, forcing them to plot their escape without ever knowing which of his 23 personas -- young or old, male or female, benign or monstrous -- they will confront on the way out. Written and directed by M. Night Shyamalan. ~ Violet LeVoit, Rovi",
  runtime: 117, poster_link: "http://www.joblo.com/posters/images/full/split_poster-2.jpg",
  imdb_link: "http://www.imdb.com/title/tt4972582/?ref_=shtt_ov_tt",
  rotten_tomatoes_link: "https://www.rottentomatoes.com/m/split_2017"
)

Movie.create(title: "John Wick: Chapter 2", description: "Legendary hitman John Wick (Keanu Reeves) is once again called out of retirement, this time by a former colleague (Riccardo Scamarcio) who wants him to repay a debt by killing an Italian crime lord (Claudia Gerini). But when the attempted assassination goes awry, Wick finds himself hunted by an international cabal of killers, and his only hope for survival might be a shadowy figure known as the Bowery King (Laurence Fishburne). Director Chad Stahelski and screenwriter Derek Kolstad return for this sequel to their 2014 cult action hit. Ian McShane, Ruby Rose, John Leguizamo, Common, Lance Reddick, and Bridget Moynahan co-star. ~ Daniel Gelb, Rovi",
runtime: 122, poster_link: "http://www.joblo.com/posters/images/full/john-wick-fposter-gallery.jpg",
imdb_link: "http://www.imdb.com/title/tt4425200/",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/john_wick_chapter_2"
)

Movie.create(title: "The Great Wall", description: "In this action-fantasy epic set in 11th century China, two mercenaries from the West (Matt Damon and Pedro Pascal) are captured by a military organization that are headquartered in a fortress on the Great Wall. In time, the duo get caught up in a battle between the Chinese warriors and a supernatural menace that the Great Wall was built to repel. Jing Tian, Andy Lau, Zhang Hanyu, Willem Dafoe, and Eddie Peng co-star. Directed by Zhang Yimou (Hero, House of Flying Daggers), this collaboration with Hollywood is the most expensive Chinese film to date. ~ Jack Rodgers, Rovi",
runtime: 104, poster_link: "http://www.joblo.com/posters/images/full/the-great-wall-t-poster-gallery.jpg",
imdb_link: "http://www.imdb.com/title/tt2034800/?ref_=nv_sr_1",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/the_great_wall_2017"
)

Movie.create(title: "Fifty Shades Darker", description: "This sequel to Fifty Shades of Grey adapts the second installment in E.L. James' best-selling trilogy of novels, which chronicle the torrid love affair between the demure Anatasia Steele (Dakota Johnson) and possessive businessman Christian Grey (Jamie Dornan). This time around, Steele and Grey's attempts to build a more trusting relationship are threatened by several of his past lovers.James Foley directed this erotic drama, which co-stars Kim Basinger, Rita Ora, Eric Johnson, Bella Heathcote, and Luke Grimes. ~ Jack Rodgers, Rovi",
runtime: 118, poster_link: "http://www.joblo.com/posters/images/full/fiftyshadesdarkerposter.jpg",
imdb_link: "http://www.imdb.com/title/tt4465564/?ref_=nv_sr_1",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/fifty_shades_darker"
)

Movie.create(title: "Hidden Figures", description: "Three female African-American mathematicians (Taraji P. Henson, Octavia L. Spencer, and Janelle Monae) provide crucial calculations for NASA's space race against the Soviets, all while dealing with the racist and sexist assumptions of their white co-workers. Kevin Costner, Kirsten Dunst, and Jim Parsons co-star in this adaptation of the book of the same name by Margot Lee Shetterly. Directed by Theodore Melfi. ~ Jack Rodgers, Rovi",
runtime: 127, poster_link: "http://www.joblo.com/posters/images/full/hidden-figures-poster.jpg",
imdb_link: "http://www.imdb.com/title/tt4846340/?ref_=fn_al_tt_1",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/hidden_figures"
)

Movie.create(title: "The Lego Batman Movie", description: "Batman (voice of Will Arnett) defends Gotham City from criminals and supervillains while bonding with a young orphan (Michael Cera) he accidentally adopted -- who, of course, eventually becomes his sidekick Robin. This spin-off of The Lego Movie also features the voices of Rosario Dawson as Batgirl, Zach Galifianakis as the Joker, and Ralph Fiennes as Batman's loyal butler Alfred Pennyworth. Directed by Chris McKay (Robot Chicken). ~ Daniel Gelb, Rovi",
runtime: 106, poster_link: "http://www.joblo.com/posters/images/full/The-Lego-Batman-Movie-poster-4-large.jpg",
imdb_link: "http://www.imdb.com/title/tt4116284/?ref_=nv_sr_1",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/the_lego_batman_movie"
)

Movie.create(title: "Fist Fight", description: "On the last day before summer vacation at a rough-and-tumble high school, mild-mannered teacher Andy Campbell (Charlie Day) accidentally causes his fearsome colleague Ron Strickland (Ice Cube) to be fired. When Strickland then challenges him to a fist fight after school, Campbell must find a way to avoid a vicious beating. Tracy Morgan, Jillian Bell, Christina Hendricks, Dean Norris, and Dennis Haysbert co-star in this comedy directed by Richie Keen. ~ Jack Rodgers, Rovi",
runtime: 91, poster_link: "http://www.joblo.com/posters/images/full/Fist-Fight-poster-2-large.jpg",
imdb_link: "http://www.imdb.com/title/tt3401882/?ref_=fn_al_tt_1",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/fist_fight_2017"
)

Movie.create(title: "A Dog's Purpose", description: "Lasse Hallström (The Hundred-Foot Journey) directed this adaptation of the best-selling novel of the same name by W. Bruce Cameron, which follows a dog (voiced by Josh Gad) as he is reincarnated as different breeds belonging to various owners. Over the course of multiple lifetimes, the canine's existence intersects with that of a young boy who rescued him in 1962. Dennis Quaid, Peggy Lipton, Britt Robertson, KJ Apa, and Juliet Rylance star. ~ Jack Rodgers, Rovi",
runtime: 120, poster_link: "http://www.joblo.com/posters/images/full/dogs_purpose_poster.jpeg",
imdb_link: "http://www.imdb.com/title/tt1753383/?ref_=nv_sr_1",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/a_dogs_purpose"
)

Movie.create(title: "Kong: Skull Island", description: "Take a trip to the mysterious island that's home to the mighty King Kong in this Legendary Films production. ~ Rovi",
runtime: 118, poster_link: "http://www.joblo.com/posters/images/full/Kong-Skull-Island-poster-2-large.jpg",
imdb_link: "http://www.imdb.com/title/tt3731562/?ref_=nv_sr_1",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/kong_skull_island"
)

Movie.create(title: "Beauty And The Beast", description: "Bill Condon (Dreamgirls) directs this live-action retelling of the Disney animated classic from 1991. As before, this fairy tale centers on a young woman named Belle (Emma Watson) who is forced to live with the Beast (Dan Stevens) in his enchanted castle. The film co-stars Luke Evans as Gaston, Ewan McGregor as Lumiere, Emma Thompson as Mrs. Potts, and Ian McKellen as Cosgworth. ~ Jack Rodgers, Rovi",
runtime: 129, poster_link: "http://www.joblo.com/posters/images/full/beauty-poster-final.jpg",
imdb_link: "http://www.imdb.com/title/tt2771200/?ref_=nv_sr_1",
rotten_tomatoes_link: "https://www.rottentomatoes.com/m/beauty_and_the_beast_2017"
)

movies = Movie.all
cinemas = Cinema.all

p movies

for i in (0...Movie.all.length)
  Showing.create(movie: movies[i], cinema: cinemas[i], start_time: Time.now, end_time: (Time.now + movies[i].runtime.minutes))
end
