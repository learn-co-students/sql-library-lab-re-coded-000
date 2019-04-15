def select_books_titles_and_years_in_first_series_order_by_year
	#"select title , year from books where series_id=1 order by year;"
	"select books.title, books.year from books where series_id = 1"

end

def select_name_and_motto_of_char_with_longest_motto
	"select name, motto from characters order by motto asc limit 1"
end

def select_value_and_count_of_most_prolific_species
	"select species ,count(species) from characters where species in(
select max(species) from characters)"
end

def select_name_and_series_subgenres_of_authors
     "select authors.name, subgenres.name from series, subgenres, authors 
  where series.subgenre_id = subgenres.id and series.author_id = authors.id"
end

def select_series_title_with_most_human_characters
	"select title from series join characters on
 characters.series_id =series.id 
and characters.species=\'human\' group by title limit 1"
end

def select_character_names_and_number_of_books_they_are_in
	"select characters.name, count(character_books.id)as num_books from
 characters,character_books where
 characters.id =character_books.character_id group by characters.name order by num_books desc
"
end
