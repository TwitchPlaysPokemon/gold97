# Map Event Scripts


## Contents

- [Object constants](#object-constants)
- [Map scripts](#map-scripts)
  - [Scene scripts](#scene-scripts)
  - [Callbacks](#callbacks)
    - [Callback types](#callback-types)
- [Event scripts](#event-scripts)
- [Text](#text)
- [Movement data](#movement-data)
- [Map events](#map-events)
  - [Warp events](#warp-events)
  - [Coord events](#coord-events)
  - [BG events](#bg-events)
    - [BG event types](#bg-event-types)
  - [Object events](#object-events)
    - [Movement types](#movement-types)
    - [Object types](#object-types)


## Object constants

<pre>
	const_def 2 ; object constants
	const <i>MAPNAME</i>_<i>OBJECTNAME</i>
</pre>


## Map scripts

<pre>
<i>MapName</i>_MapScripts:
</pre>


### Scene scripts

<pre>
	db <i>N</i> ; scene scripts
	scene_script <i>script</i>
</pre>


### Callbacks

<pre>
	db <i>N</i> ; callbacks
	callback <i>type</i>, <i>script</i>
</pre>

#### Callback types

- `MAPCALLBACK_NEWMAP`

- `MAPCALLBACK_TILES`

- `MAPCALLBACK_OBJECTS`

- `MAPCALLBACK_SPRITES`

- `MAPCALLBACK_CMDQUEUE`

<pre>
	callback MAPCALLBACK_CMDQUEUE, .Boulders

.Boulders:
	writecmdqueue .BoulderCmdQueue
	return

.BoulderCmdQueue:
	cmdqueue CMDQUEUE_STONETABLE, .BoulderTable

.BoulderTable:
	stonetable <i>warp_id</i>, <i>person</i>, <i>script</i>
	db -1 ; end
</pre>


## Event scripts

[Event commands](event_commands.md)


## Text

[Text commands](text_commands.md)


## Movement data

[Movement commands](movement_commands.md)


## Map events

<pre>
<i>MapName</i>_MapEvents:
	db 0, 0 ; filler
</pre>


### Warp events

<pre>
	db <i>N</i> ; warp events
	warp_event <i>x</i>, <i>y</i>, <i>map</i>, <i>warp_id</i>
</pre>


### Coord events

<pre>
	db <i>N</i> ; coord events
	coord_event <i>x</i>, <i>y</i>, <i>scene_id</i>, <i>script</i>
</pre>


### BG events

<pre>
	db <i>N</i> ; bg events
	bg_event <i>x</i>, <i>y</i>, <i>type</i>, <i>script</i>
</pre>

#### BG event types

- `BGEVENT_READ`

- `BGEVENT_UP/DOWN/LEFT/RIGHT`

- `BGEVENT_IFSET/IFNOTSET`

<pre>
	conditional_event <i>event_flag</i>, <i>script</i>
</pre>

- `BGEVENT_ITEM`

<pre>
	hiddenitem <i>item_id</i>, <i>event_flag</i>
</pre>

- `BGEVENT_COPY`

### Object events

<pre>
	db <i>N</i> ; object events
	object_event <i>x</i>, <i>y</i>, <i>sprite</i>, <i>movement</i>, <i>rx</i>, <i>ry</i>, <i>h1</i>, <i>h2</i>, <i>palette</i>, <i>type</i>, <i>range</i>, <i>script</i>, <i>event_flag</i>
</pre>

#### Movement types

- `SPRITEMOVEDATA_STILL`

- `SPRITEMOVEDATA_WANDER`

- `SPRITEMOVEDATA_SPINRANDOM_SLOW`

- `SPRITEMOVEDATA_WALK_UP_DOWN`

- `SPRITEMOVEDATA_WALK_LEFT_RIGHT`

- `SPRITEMOVEDATA_STANDING_UP/DOWN/LEFT/RIGHT`

- `SPRITEMOVEDATA_SPINRANDOM_FAST`

- `SPRITEMOVEDATA_BIGDOLLSYM`

- `SPRITEMOVEDATA_POKEMON`

- `SPRITEMOVEDATA_BELLIGNAN`

- `SPRITEMOVEDATA_SMASHABLE_ROCK`

- `SPRITEMOVEDATA_STRENGTH_BOULDER`

- `SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE`

- `SPRITEMOVEDATA_SPINCLOCKWISE`

- `SPRITEMOVEDATA_BIGDOLLASYM`

- `SPRITEMOVEDATA_BIGDOLL`

- `SPRITEMOVEDATA_SWIM_WANDER`

#### Object types

- `OBJECTTYPE_SCRIPT`

- `OBJECTTYPE_ITEMBALL`

<pre>
	itemball <i>item_id</i>[, <i>quantity</i>=1]
</pre>

- `OBJECTTYPE_TRAINER`

<pre>
	trainer <i>group_id</i>, <i>trainer_id</i>, <i>event_flag</i>, <i>seen_text</i>, <i>beaten_text</i>, <i>loss_text</i>, <i>script</i>
</pre>
