CREATE TABLE  film_reviews as (
    select * 
    from `movie`
    where `star`>3
);