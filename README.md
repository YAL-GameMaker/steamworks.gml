# Steamworks.gml
A native extension for GameMaker: Studio that implements various Steam API features not covered by the built-in functions - most importantly, P2P networking, lobbies, and matchmaking.

## Quick links
* [Extension' documentation](https://yal.cc/r/17/steamworks-gml/)
* [Example files](https://yellowafterlife.itch.io/steamworks-gml-example)
* [Donate (via itch.io)](https://yellowafterlife.itch.io/steamworks-gml-example)

## Usage

1. Set up GameMaker: Studio for Steamworks SDK development ([see doc](http://help.yoyogames.com/hc/en-us/articles/216754138-Using-The-Steamworks-SDK-With-GameMaker-Studio)).
2. Enable Steamworks support for desired platform(s) in Global Game Settings, "Steam" tab. Don't forget to set the game ID.
3. Import the "Steamworks.gml" extension (from ./Steamworks.gmx/extensions) to your desired project.
4. Have the game call steam_net_update once per step (required for steam events to dispatch).

If all is well, upon running the game you'll see `Steamworks.gml initialized successfully.` in the CompileForm.

`Steamworks.gml failed to link with Steam API.` means that either the Steam client is not running, or you have specified an incorrect App ID.

`Steamworks.gml binary is not loaded.` means that the DLL/DyLib/SO could not be loaded, usually due to the native extension file missing or being otherwise inaccessible.

## Building

Download or clone the repository.

Create a "Steamworks" directory and place [Steamworks SDK](https://partner.steamgames.com/) there.

**Windows:** Open the included Visual Studio solution and order it to make a x86 build.

**Linux:** Run build_linux.sh. You'll need cpp:i386, gcc:i386, and g++:i386 installed.

**Mac OSX:** Run build_osx.sh. You'll need XCode command line tools installed.

The extension is automatically updated to reflect the functions/macros from the source code as a post-build step in the Visual Studio project (via [gmxgen](https://bitbucket.org/yal_cc/gmxgen)).

## Meta
Author: Vadim "YellowAfterlife" Dyachenko

License: MIT https://opensource.org/licenses/mit-license.php

## Special thanks

* [YoYo Games](http://yoyogames.com/), for making and continuously improving GameMaker: Studio.
* Russell and Peter of YoYo Games in particular, for answering my questions on native extensions.
* [Alex Fernandez](https://twitter.com/alexfislegend), for helping build the OSX version of the extension.
* [/id/volnes](http://steamcommunity.com/id/volnes/), for answering my various Linux-related questions.
* [Riley Labrecque](https://github.com/rlabrecque), for being a source of inspiration to making this kind of project open-source (see [Steamworks.NET](https://github.com/rlabrecque/Steamworks.NET)).
