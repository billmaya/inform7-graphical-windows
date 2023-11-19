The story title is "Graphical Windows".
The story author is "Bill Maya".
The story headline is "A Non-Interactive Experiment".

[WORDS 596]

Volume - Setup

Part - Extensions

Include Simple Graphical Window by Emily Short. [Requires v10/161003 to display images correctly; v15/170131 of Flexible Windows]

Part - User Interface

Chapter - Windows

Section - Setup

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

Part - Out Of World Actions

Part - Every Turn Rules

Every turn:
	draw Figure of Antarctic in map window;
	draw Figure of Miskatonic-1907 in 1907-expedition window;
	draw Figure of Miskatonic-1926 in 1926-expedition window;
	draw Figure of Miskatonic-1930 in 1930-expedition window;
	draw Figure of HP-Lovecraft in the map window at x 50 and y 135 scaled to width 140 and height 170;
	draw Figure of Clemente-Onelli in the map window at x 50 and y 315 scaled to width 120 and height 190;
	draw Figure of Alice-Wilson in the map window at x 50 and y 500;
	draw Figure of Cystoidea in the map window at x 630 and y 30 scaled to width 275 and height 400;
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
	focus main window.

Volume - Settings

Part - Map Room

Map Room is a room. 

Volume - Figures

Figure of Antarctic is the file "Stielers-Handatlas-1891-Antarctic.jpg".
Figure of Miskatonic-1907 is the file "Miskatonic-Tunguska-Expedition-1907.jpg".
Figure of MIskatonic-1926 is the file "Miskatonic-Outer-Tibet-Expedition-1926.jpg".
Figure of Miskatonic-1930 is the file "Miskatonic-Antarctic-Expedition-1930.jpg".
Figure of HP-Lovecraft is the file "HP-Lovecraft-1934.jpg".
Figure of Clemente-Onelli is the file "Clemente-Onelli.png".
Figure of Alice-Wilson is the file "Alice-Wilson.png".
Figure of Cystoidea is the file "Hunstformen-der-Natur-Cystoidea.jpg"