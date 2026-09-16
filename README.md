# Where’s My Sidewalk?

**Where’s My Sidewalk?** is a small top-down arcade game made with Godot. Find your way through a crowded city block, weave around street furniture and buildings, avoid the traffic, and make it to the finish line.

Every run is timed. Cars spawn from both sides of the map, so a clear route can become dangerous in a moment. Finish a run to record your best time for the current play session.

## Controls

| Action | Keys |
| --- | --- |
| Move | Arrow keys or <kbd>W</kbd><kbd>A</kbd><kbd>S</kbd><kbd>D</kbd> |
| Start game | <kbd>Space</kbd> or <kbd>Enter</kbd> |

## Run the project

1. Install [Godot Engine 4.7](https://godotengine.org/download/), or a compatible Godot 4 release.
2. Import `project.godot` in the Godot Project Manager.
3. Open the project and press <kbd>F6</kbd> to run the current scene, or <kbd>F5</kbd> to run the game from the title screen.

## Project structure

```text
assets/    Art, fonts, and audio
scenes/    Godot scenes for the title screen, level, player, and cars
scripts/   Gameplay, player movement, traffic, and score logic
```

## Built with

- [Godot Engine](https://godotengine.org/)
- GDScript

## License

No license has been specified for this repository. All rights are reserved unless the project owner adds a license.
