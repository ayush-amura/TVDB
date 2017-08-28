# TVDB
Television-Database  _CMS for Movies , TVShows and Actors._ 

## Models
1. Video
2. Movie
3. Tvshow
4. User
5. Viewer
6. Admin
7. Actor


## Associations- STI

* Viewer **is a** User **(STI)** 
* Admin **is a** User **(STI)**
* Tvshow **is a** Video **(STI)**
* Movie **is a** Video **(STI)**

## Associations- HABTM
* Viewer to Actor
* Viewer to Movie
* Viewer to Tvshow
* Actor to Tvshow
* Actor to Movie

## Associations- has_many
* Admin to Videos

