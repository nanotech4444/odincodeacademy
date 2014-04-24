#Movie lib with a case statement
movies = {
    matrix: 3
}
puts "Movie library"
puts "You can 'display', 'add', 'update' or 'delete'"
choice=gets.chomp

case choice
    when "add"
        puts "Which title?"
        title = gets.chomp
        puts "Rating?"
        rating = gets.chomp
        if movies[title.to_sym]==nil
            movies[title.to_sym]=rating.to_i
            puts "Movie #{title} and rating #{rating} added"
        else
            puts "Movie already exists in database"
        end
    when "update"
        puts "Which title?"
        title = gets.chomp
        if movies[title.to_sym]==nil
            puts "Movie not present!"
        else
            puts "New rating?"
            rating=gets.chomp
            movies[title.to_sym]=rating.to_i
            puts "Movie #{title}, #{rating} updated!"
        end
    when "display"
        movies.each do |k,v|
            puts "#{k}: #{v}"
        end
        puts "Those are all the movies I have!"
    when "delete"
        puts "Which title?"
        title = gets.chomp
        if movies[title.to_sym]==nil
            puts "The movie is not here!"
        else
            movies.delete(title)
            puts "#{title} Deleted!"
        end
else
    puts "Error!"
end