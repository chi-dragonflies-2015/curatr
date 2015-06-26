# Curatr
Created by Jason Pettus
as a class assignment for DevBootcamp Chicago

A play on the word 'curator,' <b>Curatr</b> is a web app for members of the Flickr photo-sharing service, which allows them to create "virtual art galleries" by adding images found throughout the website, searchable by both member-associated criteria (a member's friends, a member's groups, a member's favorites, etc), and criteria belonging to the website as a whole (the newest images globally, the ones with the highest 'interestingness' score, etc). The resulting galleries, along with that curator's notes on each image, are then available for the general public to view and explore, regardless of whether or not they are Flickr members themselves. (Please note, as a pleasant side effect, Curatr also exists as a better and more intuitive way for members to look through the images associated with their accounts than the built-in functions at the main website, and the app can easily be used just as a sophisticated Flickr interface if one wishes.)

## User Stories

<b>As a registered user (or “curator”), I want to be able to...</b>
- Log in with my Flickr account, in order to create a Curatr account.
- Create a new gallery and give it a title and text introduction.
- Create as many galleries as I want.
- Look through photos by:
  * Browsing my own photos
  * Browsing my friends’ photos
  * Browsing my starred photos
  * Browsing my groups
  * Browsing all Flickr photos by creation date
  * Browsing all Flickr photos by interestingness
  * Browsing all Flickr photos by location
  * Searching through photos by tag
  * Filtering all of these options by “Creative Commons images only”
  * Filtering all of these options by “how many days back”
- Access a slide-in menu to:
  * See more info about that photo
  * Add it to my traditional “favorites”
  * Add it to one of my galleries
- Click on that photo to go to its original Flickr page
- Add a few personal thoughts about that photo
- Enter a gallery in “edit” mode, to:
  * Edit the order the photos will appear
  * Delete a photo
  * Edit the personal thoughts of any photo
- Retrieve an easy-to-understand URL for that gallery
  * (for example, [curatr.herokuapp.com/users/jasonpettus/galleries/striking-portraits])

<b>As a non-registered visitor, I want to be able to...</b>
- Visit a gallery\* through its URL.
  * (\*Note: In keeping with Flickr's API guidelines, all galleries begin with a splash page displaying that gallery's name, curator and introduction, but are also required to state that Curatr is not officially associated with Flickr in any way, that all images seen at Curatr are the rightful property of the original photographer, and that any image can be clicked on to visit that image's original posting page at the main Flickr website.)
- Browse all galleries by:
  * Curator
  * Creation date
- See a stripped-down and minimalist slide show of that particular gallery, featuring only the image itself, its title and artist, and the curator’s notes.
- Move backwards and forwards in gallery using the arrow keys on my keyboard.
- Hover over a slide-in menu containing:
  * Options for manually moving backwards and forwards in gallery with my mouse
  * “Playback” controls for optional slide show view (pause/play, set time for each image)
  * Ability to quit and go back to the main menu
- Click on any image at any time to go to its original Flickr page.

## MVP

[Trello project manager for Curatr](https://trello.com/b/hOvVE8g8/curatr)

### Sprint 1
- [X] Create schema
- [X] Create migrations
- [X] Create models
- [X] Incorporate flickraw gem
- [X] Incorporate OAuth ability to sign into Flickr
- [X] Skeleton HTML and controller routes for testing all

### Sprint 2
