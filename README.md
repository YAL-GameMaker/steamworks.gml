# Steamworks.gml
**Quick links:** 
[documentation](https://yal.cc/r/17/steamworks-gml/)
· [sample project](https://yellowafterlife.itch.io/steamworks-gml-example)
· [donate](https://yellowafterlife.itch.io/steamworks-gml-example/purchase)

A native extension for GameMaker (GMS1, GMS2, GMS2.3+) that implements various Steam API features not covered by the built-in functions - most importantly, P2P networking, lobbies, and matchmaking.

## Usage

1. Set up GameMaker for Steamworks SDK development ([GMS1](http://help.yoyogames.com/hc/en-us/articles/216754138-Using-The-Steamworks-SDK-With-GameMaker-Studio), [GMS2](https://help.yoyogames.com/hc/en-us/articles/360006823232-Enabling-Steam-Integration-In-Your-Desktop-Games)).
2. Enable Steamworks support for desired platform(s) in Global Game Settings, "Steam" tab. Don't forget to set the game ID.
3. Import the "Steamworks.gml" extension (from ./Steamworks.gmx/extensions) to your desired project.
4. Have the game call `steam_gml_update` once per step (required for steam events to dispatch).

If all is well, upon running the game you'll see `Steamworks.gml initialized successfully.` in the CompileForm.

`Steamworks.gml failed to link with Steam API.` means that either the Steam client is not running, or you have specified an incorrect App ID.

`Steamworks.gml binary is not loaded.` means that the DLL/DyLib/SO could not be loaded, usually due to the native extension file missing or being otherwise inaccessible.

**Note:** If you are grabbing the sample project straight from this repository, you will need to compile it first using Visual Studio (Windows) or via included .sh scripts (Mac, Linux). [Sample project](https://yellowafterlife.itch.io/steamworks-gml-example) page has pre-compiled binaries.

## Building

Download or clone the repository.

Create a `steamworks_sdk_135a` directory and place [Steamworks SDK 1.35a](https://partner.steamgames.com/downloads/steamworks_sdk_135a.zip) there (for GMS1).

Create a `steamworks_sdk_142` directory and place [Steamworks SDK 1.42](https://partner.steamgames.com/downloads/steamworks_sdk_142.zip) there (for GMS2).

For both directories, `Readme.txt` should be directly inside the directory (`steamworks_sdk_135a/Readme.txt`) - no subdirectories!

* **Windows:**
  * **GMS1:** Open the included Visual Studio solution, switch the solution platform (in toolbar) to `x86`, switch configuration (also in toolbar) to `GMS1 Release`, and pick menu:Build➜Build Solution.
  * **GMS2:** Same as above, but with `GMS2 Release` configuration.
  * **GMS2.3 with x64 runtime:** Same as above, but with `GMS2 Release` configuration and `x64` platform.
  
  **Note:** If you are adding new functions, you'll generally want to set up [GmxGen](https://github.com/YAL-GameMaker-Tools/GmxGen) to avoid adding them to extensions by hand. Once set up (extract `GmxGen.exe` next to `vcxproj` file), GmxGen will be ran automatically in post-build step.
* **Linux:**
  * **GMS1:** Run `build_linux_gms1.sh`. You'll need cpp:i386, gcc:i386, and g++:i386 installed.
  * **GMS2:** Run `build_linux_gms2.sh`.
* **Mac:**
  * **GMS1:** Apple dropped support for x86 binaries that GMS1 exports! My condolences.
  * **GMS2:** Run `build_mac_gms2.sh`.
  
  **Note:** Due to Apple's recent notarization changes, native extensions will no longer load when running from IDE on VM, as both application and all of its dependencies must be signed with same certificate.

## Meta
Author: Vadim "YellowAfterlife" Dyachenko

License: MIT https://opensource.org/licenses/mit-license.php

## Special thanks

* [YoYo Games](http://yoyogames.com/), for making and continuously improving GameMaker: Studio.
* Russell and Peter of YoYo Games in particular, for answering my questions on native extensions.
* [Alex Fernandez](https://twitter.com/alexfislegend), for helping build the OSX version of the extension.
* [/id/volnes](http://steamcommunity.com/id/volnes/), for answering my various Linux-related questions.
* [Riley Labrecque](https://github.com/rlabrecque), for being a source of inspiration to making this kind of project open-source (see [Steamworks.NET](https://github.com/rlabrecque/Steamworks.NET)).
