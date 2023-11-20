The story title is "Graphical Windows".
The story author is "Bill Maya".
The story headline is "[if time-machine-ui is false]A Non-Interactive Window Experiment[otherwise]Text & Graphic Mode Window Experiment".

[WORDS 2223]

Volume - Setup

Part - Extensions

Include Simple Graphical Window by Emily Short. [Requires v10/161003 to display images correctly; v15/170131 of Flexible Windows]
Include Basic Screen Effects by Emily Short.
Include Conversation Package by Eric Eve.

Part - User Interface

Chapter - Windows

Section - Setup

debug-mode is a truth state that varies.
debug-mode is true.

time-machine-ui is a truth state that varies.
time-machine-ui is true.

[Original Experiment Configuration]

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

[Time Machine Configuration]

The right-sidebar window is a graphics g-window spawned by the main window.
The position of the right-sidebar window is g-placeright.
The scale method of the right-sidebar window is g-fixed-size.
The measurement of the right-sidebar window is 290.

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

Section - Rules

[Time Machine Configuration]

Rule for refreshing the title-characters window:
	let X be the list of people that are not the player in the location of the player;
	if  X is not empty:
		say "People You Can Talk To By[line break]Saying 'Hello' To Them";
	otherwise:
		say "".

Rule for refreshing the list-characters window:
	let X be the list of people that are not the player in location of player;
	if X is not empty:
		say "[X]";
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

Part - Status Line

[The original code was taken from the Improved Status Line section of "Bronze" by Emily Short and modified slightly. 
 See https://i7-examples.github.io/Bronze/source_43.html for the original code.]

Table of User Styles (continued)
window	style name	background color
all-grid-windows	special-style-1	"#FFFFFF" ["#FF0000" - Red]

Table of Fancy Status
left	central	right
" [if in darkness]Darkness[otherwise][location][end if]"	""	"[top rose]"
" "	""	"[middle rose]"
" "	""	"[bottom rose]"

When play begins: 
	if time-machine-ui is true:
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
	if time-machine-ui is true:
		fill status bar with Table of Fancy Status;
		say default letters;
		rule succeeds. 

Part - Out Of World Actions

graphics-mode is a truth state that varies.
graphics-mode is false.

Request graphics mode is an action out of world.
Report request graphics mode: 
	if graphics-mode is false:
		now graphics-mode is true;
	otherwise:
		now graphics-mode is false;
	[say "GRAPHICS TURNED [if graphics-mode is false]OFF[otherwise]ON[end if].";]
	follow Update Debug rule.

Understand "graphics" as request graphics mode.

Part - Every Turn Rules

Every turn:
	if time-machine-ui is false:
		draw Figure of Antarctic in map window;
		draw Figure of Miskatonic-1907 in 1907-expedition window;
		draw Figure of Miskatonic-1926 in 1926-expedition window;
		draw Figure of Miskatonic-1930 in 1930-expedition window;
		draw Figure of HP-Lovecraft in the map window at x 50 and y 135 scaled to width 140 and height 170;
		draw Figure of Clemente-Onelli in the map window at x 50 and y 315 scaled to width 120 and height 190;
		draw Figure of Alice-Wilson in the map window at x 50 and y 500;
		draw Figure of Cystoidea in the map window at x 630 and y 30 scaled to width 275 and height 400;
		focus main window;
	[otherwise:]

Every turn (this is the Update Debug rule):
	if debug-mode is true: 
		focus debug-info window;
		clear debug-info window;
		say "GRAPHICS: [graphics-mode]";
		focus main window.

		

Part - Release

Release along with a website and an interpreter.

[
Before starting the virtual machine:
	now the current graphics drawing rule is the centered scaled drawing rule;
]

Volume - Beginning The Story

When play begins:
	close the graphics window; [Since we're not using this window]
	if time-machine-ui is false:
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
		open right-sidebar window;
		open title-inventory window;
		open list-inventory window;
		open title-characters window;
		open list-characters window;
		open title-topics window;
		open character-topics window;
		if debug-mode is true:
			open debug-title window;
			open debug-info window;
			follow Update Debug rule.

Volume - Settings

Map Room is a room. 

To The North is a room. To The North is north of the Map Room.
To The South is a room. To The South is south of the Map Room.
To The West is a room. To The West is west of the Map Room.
To The East is a room. To The East is east of the Map Room.

To The Northeast is a room. To The Northeast is northeast of the Map Room.
To The Northwest is a room. To The Northwest is northwest of the Map Room.
To The Southeast is a room. To The Southeast is southeast of the Map Room.
To The Southwest is a room. To The Southwest is southwest of the Map Room.

Up Above is a room. Up Above is up from the Map Room.
Down Below is a room. Down Below is down from the Map Room.

Volume - Figures

Figure of Antarctic is the file "Stielers-Handatlas-1891-Antarctic.jpg".
Figure of Miskatonic-1907 is the file "Miskatonic-Tunguska-Expedition-1907.jpg".
Figure of MIskatonic-1926 is the file "Miskatonic-Outer-Tibet-Expedition-1926.jpg".
Figure of Miskatonic-1930 is the file "Miskatonic-Antarctic-Expedition-1930.jpg".
Figure of HP-Lovecraft is the file "HP-Lovecraft-1934.jpg".
Figure of Clemente-Onelli is the file "Clemente-Onelli.png".
Figure of Alice-Wilson is the file "Alice-Wilson.png".
Figure of Cystoidea is the file "Hunstformen-der-Natur-Cystoidea.jpg"