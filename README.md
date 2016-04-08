# Steamworks.gml
A native extension for GameMaker: Studio that implements various Steam API features not covered by the built-in functions - most importantly, P2P networking, lobbies, and matchmaking.

## Meta
Author: Vadim "YellowAfterlife" Dyachenko

License: GNU LGPL v3 https://www.gnu.org/licenses/lgpl-3.0

## Building

Download or clone the repository.

Create a "Steamworks" directory and place [Steamworks SDK](https://partner.steamgames.com/) there.

**Windows:** Open the included Visual Studio solution and order it to make a x86 build.

**Linux:** Run build_linux.sh. You'll need cpp:i386, gcc:i386, and g++:i386 installed.

**Mac OSX:** Pending. If you can get it to work on OSX, please submit a pull request.