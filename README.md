# Better Equipment Menu

![Screenshot_1](/screenshots/20170322135030_1.jpg )

This is a small addon which aims to make the Detective-/Traitor-Equipment Shop easier to use while having a lot of weapons/items on your server.

## Features
- set number of items per row/column and item size via ConVar
- set items as favorites to show them at the top of the list
- show/hide item markes (custom-, slot-, favorite-marker)
- settings tab in f1 menu for changing mentioned ConVars
- simple/big icons instead of long texts for avaialability
- set global layout via serverside ConVars so everyone sees the same (for serveradmins)

## Installation
### Steam Workshop
#### Client
1. Go to http://steamcommunity.com/sharedfiles/filedetails/?id=878772496
2. Click Subscribe

#### Server
1. Go to http://steamcommunity.com/sharedfiles/filedetails/?id=878772496
2. Add the file to your servers collection

### Manually
#### Client
#### Server

## ConVars
### Clientside
- ttt_bem_cols (def. 4): Set number of columns
- ttt_bem_rows (def. 5): Set number of rows
- ttt_bem_size (def. 64): Set item size
- ttt_bem_marker_custom (def. 1): Show custom item markers
- ttt_bem_marker_slot (def. 1): Show slot markers
- ttt_bem_marker_fav (def. 1): Show favorite item markers

### Serverside
- ttt_bem_allow_change (def. 1): Allow clients to change the layout
The following values only are used when the above is set to false (0):
- ttt_bem_sv_cols (def. 4): Set number of columns (serverwide)
- ttt_bem_sv_rows (def. 5): Set number of rows (serverwide)
- ttt_bem_sv_size (def. 64): Set item size (serverwide)

## Usage

## Changelog
See full changelog on [Steam Workshop](http://steamcommunity.com/sharedfiles/filedetails/changelog/878772496)

## Contributing
### Add a Feature
1. Fork this repository
2. Create your feature branch ( git checkout -b my-new-feature )
3. Commit your changes ( git commit -am 'Add some feature' )
4. Push to the branch ( git push origin my-new-feature )
5. Create a new Pull Request

### Report a Bug
Either open a new Issue [here](https://github.com/hendrikbl/ttt-bem/issues) or report it on the [Steam Workshop](http://steamcommunity.com/workshop/filedetails/discussion/878772496/135511379838425631/)

## Misc
The HUD used in the screenshots is the [Octogonal HUD](https://steamcommunity.com/sharedfiles/filedetails/?id=325000783) by [Exho](http://steamcommunity.com/id/Exho1).
