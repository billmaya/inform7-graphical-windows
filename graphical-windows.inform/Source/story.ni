The story title is "Graphical Windows".
The story author is "Bill Maya".
The story headline is "[if text-and-graphics-ui is false]A Non-Interactive Window Experiment[otherwise]A Text & Graphic Mode Window Experiment".

[WORDS 3303]

Volume - Setup

Book - Extensions

Include Simple Graphical Window by Emily Short. [Requires v10/161003 to display images correctly; v15/170131 of Flexible Windows]
Include Basic Screen Effects by Emily Short. [Required to change status bar and display compass rose]
Include Conversation Package by Eric Eve. [Required to avoid "interlocutor" errors (remove later)]

Book - User Interface

Part - Windows

Chapter - Setup

debug-mode is a truth state that varies.
debug-mode is true.

text-and-graphics-ui is a truth state that varies.
text-and-graphics-ui is true.

graphics-mode is a truth state that varies.
graphics-mode is true.

Section - Non-Interactive Configuration

The map window is a graphics g-window spawned by the main window.
The position of the map window is g-placeabove.
The scale method of the map window is g-proportional.
The measurement of the map window is 75.

The 1907-expedition window is a graphics g-window spawned by the map [graphics] window.
The position of the 1907-expedition window is g-placeright.
The scale method of the 1907-expedition window is g-proportional.
The measurement of the 1907-expedition window is 25.

The 1926-expedition window is a graphics g-window spawned by the 1907-expedition window.
The position of the 1926-expedition window is g-placebelow.
The scale method of the 1926-expedition window is g-proportional.
The measurement of the 1926-expedition window is 65.

The 1930-expedition window is a graphics g-window spawned by the 1926-expedition window.
The position of the 1930-expedition window is g-placebelow.
The scale method of the 1930-expedition window is g-proportional.
The measurement of the 1930-expedition window is 50. 

Section - Text & Graphics Configuration

The right-sidebar window is a graphics g-window spawned by the main window.
The position of the right-sidebar window is g-placeright.
The scale method of the right-sidebar window is g-fixed-size.
The measurement of the right-sidebar window is 290.

The graphics-upper-right window is a graphics g-window spawned by the right-sidebar window.
The position of the graphics-upper-right window is g-placeabove.
The scale method of the graphics-upper-right window is g-fixed-size.
the measurement of the graphics-upper-right window is 250.

The title-characters window is a text grid g-window spawned by the right-sidebar window.
The position of the title-characters window is g-placeabove.
The scale method of the title-characters window is g-fixed-size.
The measurement of the title-characters window is 2. 

The list-characters window is a text buffer g-window spawned by the right-sidebar window.
The position of the list-characters window is g-placeabove.
The scale method of the list-characters window is g-fixed-size.
The measurement of the list-characters window is 4. [8.]

The title-talking-to window is a text grid g-window spawned by the right-sidebar window.
The position of the title-talking-to window is g-placeabove.
The scale method of the title-talking-to window is g-fixed-size.
The measurement of the title-talking-to window is 2. 

The talking-to-character window is a text buffer g-window spawned by the right-sidebar window.
The position of the talking-to-character window is g-placeabove.
The scale method of the talking-to-character window is g-fixed-size.
The measurement of the talking-to-character window is 3.

The title-topics window is a text grid g-window spawned by the right-sidebar window.
The position of the title-topics window is g-placeabove.
The scale method of the title-topics window is g-fixed-size.
The measurement of the title-topics window is 2.

The character-topics window is a text buffer g-window spawned by the right-sidebar window.
The position of the character-topics window is g-placeabove.
The scale method of the character-topics window is g-fixed-size.
The measurement of the character-topics window is 9.

The title-inventory window is a text grid g-window spawned by the right-sidebar window.
The position of the title-inventory window is g-placeabove.
The scale method of the title-inventory window is g-fixed-size.
The measurement of the title-inventory window is 2.

The list-inventory window is a text buffer g-window spawned by the right-sidebar window.
The position of the list-inventory window is g-placeabove.
The scale method of the list-inventory window is g-fixed-size.
The measurement of the list-inventory window is 12. [16.]

The debug-title window is a text grid g-window spawned by the right-sidebar window.
The position of the debug-title window is g-placeabove.
The scale method of the debug-title window is g-fixed-size.
The measurement of the debug-title window is 2.

The debug-info window is a text buffer g-window spawned by the right-sidebar window.
The position of the debug-info window is g-placeabove.
The scale method of the debug-info window is g-fixed-size.
The measurement of the debug-info window is 9.

Chapter - Rules

Section - Text & Graphics Configuration

Rule for refreshing the title-characters window:
	let people-in-room be the list of people that are not the player in the location of the player;
	if  people-in-room is not empty:
		say "People In The Room";
	otherwise:
		say "".

Rule for refreshing the list-characters window:
	let people-in-room be the list of people that are not the player in location of player;
	if people-in-room is not empty:
		say "[people-in-room]";
	otherwise:
		say "".

Rule for refreshing the title-talking-to window:
	say "[if the current interlocutor is not nothing]You Are Now Talking To[line break]This Person[otherwise][end if]".
	
Rule for refreshing the talking-to-character window:
	if current interlocutor is not nothing:
		say current interlocutor.
	
Rule for refreshing the title-topics window:
	say "[if the current interlocutor is not nothing]Some Things You Can Talk[line break]About With [current interlocutor][otherwise][end if]".
	
Rule for refreshing the character-topics window:
	if current interlocutor is not nothing:
		try listing suggested topics;
	otherwise:
		say "".
	
Rule for refreshing the title-inventory window:
	say "Possessions". 
	
Rule for refreshing the list-inventory window:
	try taking inventory.

Rule for refreshing the debug-title window:
	say "DEBUG".
	
Rule for refreshing the graphics-upper-right window:
	if graphics-mode is true:
		let people-in-room be the list of people that are not the player in the location of the player;
		if people-in-room is not empty:
			if entry 1 of people-in-room is Weena, draw Figure of Weena in graphics-upper-right window;
			if entry 1 of people-in-room is Humboldt, draw Figure of Humboldt in graphics-upper-right window;
			if entry 1 of people-in-room is Gernsback, draw Figure of Gernsback in graphics-upper-right window;
		otherwise:
			if the place of the location of the player is past, draw Figure of London-1895 in graphics-upper-right window;
			if the place of the location of the player is future, draw Figure of 802701 in graphics-upper-right window;
	otherwise:
		if the place of the location of the player is past, draw Figure of London-1895 in graphics-upper-right window;
		if the place of the location of the player is future, draw Figure of 802701 in graphics-upper-right window;
	focus main window;

Book - Status Line

Table of User Styles (continued)
window	style name	background color
all-grid-windows	special-style-1	"#FFFFFF" ["#FF0000" - Red]

Table of Fancy Status
left	central	right
" [if in darkness]Darkness[otherwise][location][end if]"	""	"[top rose]"
" [if the place of the location of the player is past]1895[otherwise]802,701[end if]"	""	"[middle rose]"
" "	""	"[bottom rose]"

When play begins: 
	if text-and-graphics-ui is true:
		now right alignment depth is 25;

To say red reverse:
	say special-style-1;

To say default letters:
	say roman type;

Definition: a room is discernible:
	yes.

To say top rose:
	say "Exits    "; [Added]
	let place be the room up from the location;
	if the place is a discernible room, say "[if the place is unvisited][red reverse][end if]U [default letters]"; otherwise say "  "; [Added one additional space to otherwise say]
	let place be the room northwest from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]NW [default letters]"; otherwise say "   "; [Added two additional spaces to otherwise say]
	let place be the room north from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]N [default letters]"; otherwise say "  "; [Added one additional space to otherwise say]
	let place be the room northeast from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]NE[default letters]"; otherwise say " ".

To say middle rose:
	say "           "; [Added one additional space to say; added nine additional spaces]
	let place be the room west from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]W [default letters]"; otherwise say "  ";
	say " . ";
	let place be the room east from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if] E[default letters]"; otherwise say "  ".

To say bottom rose:
	say "         "; [Added nine additional spaces]
	let place be the room down from the location;
	if the place is a discernible room, say "[if the place is unvisited][red reverse][end if]D [default letters]"; otherwise say "  "; [Added one additional space to otherwise say]
	let place be the room southwest from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]SW [default letters]"; otherwise say "   "; [Added two additional spaces to otherwise say]
	let place be the room south from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]S [default letters]"; otherwise say "  "; [Added one additional space to otherwise say]
	let place be the room southeast from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]SE[default letters]"; otherwise say " ".

Rule for constructing the status line:
	if text-and-graphics-ui is true:
		fill status bar with Table of Fancy Status;
		say default letters;
		rule succeeds. 

Book - Out Of World Actions

Request graphics mode is an action out of world.
Report request graphics mode: 
	if graphics-mode is false:
		now graphics-mode is true;
	otherwise:
		now graphics-mode is false;
	follow Update Debug rule.

Understand "graphics" as request graphics mode.

Book - Every Turn Rules

Part - User Interface

Every turn:
	if text-and-graphics-ui is true:
		focus main window;
	otherwise:
		draw Figure of Antarctic in map window;
		draw Figure of Miskatonic-1907 in 1907-expedition window;
		draw Figure of Miskatonic-1926 in 1926-expedition window;
		draw Figure of Miskatonic-1930 in 1930-expedition window;
		draw Figure of HP-Lovecraft in the map window at x 50 and y 135 scaled to width 140 and height 170;
		draw Figure of Clemente-Onelli in the map window at x 50 and y 315 scaled to width 120 and height 190;
		draw Figure of Alice-Wilson in the map window at x 50 and y 500;
		draw Figure of Cystoidea in the map window at x 630 and y 30 scaled to width 275 and height 400;
		focus main window;
		
Every turn (this is the Refresh Windows rule):
	if text-and-graphics-ui is true:
		refresh the title-characters window;
		refresh the list-characters window;
		refresh the title-talking-to window;
		refresh the talking-to-character window;
		refresh the title-topics window;
		refresh the character-topics window;
		refresh the list-inventory window;
		refresh the graphics-upper-right window;

Chapter - Debug

Every turn (this is the Update Debug rule):
	if debug-mode is true: 
		focus debug-info window;
		clear debug-info window;
		say "GRAPHICS MODE: [graphics-mode][line break]";
		let people-in-room be the list of people that are not the player in the location of the player;
		say "PEOPLE-IN-ROOM: [if people-in-room is not empty][people-in-room][otherwise]none[end if][line break]";
		say "TIME: [time of day][line break]";
		focus main window.

Book - Release

Release along with a website and an interpreter.

[
Before starting the virtual machine:
	now the current graphics drawing rule is the centered scaled drawing rule;
]

Volume - Beginning The Story

The player is in the Map Room.

When play begins:
	close the graphics window; [Since we're not using this window]
	if text-and-graphics-ui is false:
		open the map window;
		open the 1907-expedition window;
		open the 1926-expedition window;
		open the 1930-expedition window;
		draw Figure of Antarctic in map window;
		draw Figure of Miskatonic-1907 in 1907-expedition window;
		draw Figure of Miskatonic-1926 in 1926-expedition window;
		draw Figure of Miskatonic-1930 in 1930-expedition window;
		draw Figure of HP-Lovecraft in the map window at x 50 and y 135 scaled to width 140 and height 170;
		draw Figure of Clemente-Onelli in the map window at x 50 and y 315 scaled to width 120 and height 190;
		draw Figure of Alice-Wilson in the map window at x 50 and y 500;
		draw Figure of Cystoidea in the map window at x 630 and y 30 scaled to width 275 and height 400;
		focus main window;
	otherwise:
		if graphics-mode is false:
			open right-sidebar window;
			open title-inventory window;
			open list-inventory window;
			open title-characters window;
			open list-characters window;
			open title-topics window;
			open character-topics window;
		otherwise:
			open right-sidebar window;
			open graphics-upper-right window;
			open title-inventory window;
			open list-inventory window;
			open title-characters window;
			open list-characters window;
			open title-topics window;
			open character-topics window;
			refresh the graphics-upper-right window;
			focus main window;
		if debug-mode is true:
			open debug-title window;
			open debug-info window;
			follow Update Debug rule;

Volume - Settings

Book - General

Time period is a kind of value.
The time periods are none, past, and future.

A room has a time period called place.
The place of a room is usually none.

Book - Figures

A room has an figure name called illustration.

First carry out looking when the illustration of the location is not Figure of cover (this is the Display Illustration rule):
	if graphics-mode is true:
		display the illustration of the location.
		
A thing has a figure name called illustration.

Before examining the noun: 
	if the noun is not a person:
		if graphics-mode is true:
			display the illustration of the noun.

Part - Non-Interactive Images

Figure of Antarctic is the file "Stielers-Handatlas-1891-Antarctic.jpg".
Figure of Miskatonic-1907 is the file "Miskatonic-Tunguska-Expedition-1907.jpg".
Figure of MIskatonic-1926 is the file "Miskatonic-Outer-Tibet-Expedition-1926.jpg".
Figure of Miskatonic-1930 is the file "Miskatonic-Antarctic-Expedition-1930.jpg".
Figure of HP-Lovecraft is the file "HP-Lovecraft-1934.jpg".
Figure of Clemente-Onelli is the file "Clemente-Onelli.png".
Figure of Alice-Wilson is the file "Alice-Wilson.png".
Figure of Cystoidea is the file "Hunstformen-der-Natur-Cystoidea.jpg".

Part - Text & Graphics Images

Figure of London-1895 is the file "silhouette-london-1895-3.png".
Figure of 802701 is the file "silhouette-802701-0.png".

Figure of Map-Room-0 is the file "map-room-0.png".
Figure of Map-Room-0a is the file "map-room-0a.png".
Figure of Map-Room-1 is the file "map-room-1.png".
Figure of Map-Room-1a is the file "map-room-1a.png".

Figure of Workshop-1 is the file "workshop-1.png".
Figure of Workshop-1a is the file "workshop-1a.png".

Figure of Library-3 is the file "library-3.png".
Figure of Library-3a is the file "library-3a.png".

Figure of Time-Travel is the file "time-travel-2a.png".

Figure of Domed-Building-3 is the file "domed-building-3.png".
Figure of Domed-Building-3a is the file "domed-building-3a.png".

Figure of Cavern-1 is the file "cavern-1.png".
Figure of Cavern-1a is the file "cavern-1a.png".

Figure of Weena is the file "weena-0.png".
Figure of Humboldt is the file "humboldt-3.png".
Figure of Gernsback is the file "gernsback-3.png".

Figure of Orrery is the file "orrery-0a.png".
Figure of Book is the file "book-0a.jpg".

Book - Rooms

Part - Map Room

Map Room is a room. 
The description of the Map Room is "This is a large room whose walls are covered in ancient and modern maps of all shapes and sizes."
The place of the Map Room is past.
The illustration of Map Room is Figure of Map-Room-0a.

Instead of going south in the Map Room:
	now time-traveling-south is true;

Part - Library

The Library is a room. "This is the library."
The Library is north of the Map Room.
The place of the Library is past.
The illustration of Library is Figure of Library-3a.

Part - Workshop

The Workshop is a room. 
The Workshop is west of the Map Room.
The place of the Workshop is past.
The illustration of Workshop is Figure of Workshop-1a.

Part - Domed Building

The Domed Building is a room.
The Domed Building is south of the Map Room.
The place of the Domed Building is future.
The illustration of Domed Building is Figure of Domed-Building-3a.

Instead of going north in the Domed Building:
	now time-traveling-north is true;

Part - Cavern

The Cavern is a room. 
The Cavern is east from the Domed Building.
The place of the Cavern is future.
The illustration of Cavern is Figure of Cavern-1a.

Part - Room Without An Image

The Void is a room.
The description of Void is "This room has no illustration to display."
The Void is east of the Map Room.
The place of the Void is past.

Volume - Characters

Book - Weena

Weena is a person.
Weena is in the Domed Building.

Book - Humboldt

Humboldt is a person.
Humboldt is in the Workshop.

Book - Gernsback

Gernsback is a person.
Gernsback is in the Library.

Volume - Things

Book - Orrery

The orrery is a thing.
The orrery is in the Map Room.
The illustration of the orrery is Figure of Orrery.

Book - Book

The book is a thing.
The book is in the Library.
The illustration of the book is Figure of Book.

Volume - Scenes

time-traveling-south is a truth state that varies.
time-traveling-south is false.

time-traveling-north is a truth state that varies.
time-traveling-north is false.

Book - Time Travel South

Time Travel South is a recurring scene.

Time Travel South begins when time-traveling-south is true.

When Time Travel South begins:	
	say "TIME TRAVEL SOUTH BEGINS.";
	if graphics-mode is true:
		display Figure of Time-Travel;
	now time-traveling-south is false;

Time Travel South ends when time-traveling-south is false.

When Time Travel South ends:
	say "TIME TRAVEL SOUTH ENDS.";
	move the player to the Domed Building;

Book - Time Travel North

Time Travel North is a recurring scene.

Time Travel North begins when time-traveling-north is true.

When Time Travel North begins:	
	say "TIME TRAVEL NORTH BEGINS.";
	if graphics-mode is true:
		display Figure of Time-Travel;
	now time-traveling-north is false;

Time Travel North ends when time-traveling-north is false.

When Time Travel North ends:
	say "TIME TRAVEL NORTH ENDS.";
	move the player to the Map Room;
