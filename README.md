# Movie Database in Prolog

This Prolog database contains information about movies and dramas from various countries.

## Predicate Structure

- `pakistani_movie/4`: Represents Pakistani movies with arguments `(Title, Director, Hero, Topic)`.
- `indian_movie/4`: Represents Indian movies with arguments `(Title, Director, Hero, Topic)`.
- ... (List other predicates and their structures)

## Querying the Database

### Queries by Country
- To retrieve movies by country, use predicates like `pakistani_movie/4`, `indian_movie/4`, etc.

### Queries by Topic
- Search movies based on topics like `romance`, `drama`, `action` by querying for a specific topic across all countries.

### Queries by Director/Actor
- Retrieve movies by a particular director or actor by querying for the corresponding argument.

## Demo Example

Suppose you want to find Pakistani movies:

```prolog
?- pakistani_movie(Movie, Director, Hero, Topic).
% Output: List of Pakistani movies with their directors, heroes, and topics.
