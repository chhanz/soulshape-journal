# Soulshape Journal

Adds a tab in the Collections Journal to track your soulshape collection.

## Features

* Displays all known soulshapes currenty available for players in 9.1.5.
* Tracks almost every collected soulshape on any character.
* Detailed information on where and how to find every soulshape.

## Upcoming Features

* About panel, with thanks, acknowledgments and misc information.
* Search bar and filter drop down.
* Ability to mark untrackable soulshapes as collected.
* Display a warning when the user isn't a member of the Night fae.
* Add information about the Spectral Feed back into the guides.

## Known Issues

* Collection is not updated when you collect a new soulshape, the addon currently needs a /reload to refresh its database.
* Coordinates should always display decimal digits.
* Corgi and Well Fed Cat soulshapes aren't tracked properly since they have no associated quests.

## Licensing

The project is released under the [MIT License](LICENSE.txt).

## Reporting issues

If you find an bug or want to suggest a feature or enhancement, please create an issue on this repository. Github is the only channel I'll monitor for this purpose. 

Before you create an issue about a bug, make sure it's not already in the Known Issues section. Please attach any relevant information you have, including Lua stacktraces, steps you took to trigger the bug and the list of other addons you use (I would be extra kind to narrow down that list by reproducing the bug with other addons disabled, in case the bug is caused by an incompatibility between Soulshape Journal and another addon).

## Translating the addon

Available translations:

* :us:/:uk: English by @christopheml
* :fr: French by @christopheml

If you want to contribute a new translation, please open a pull-request with the new translation added. 

The new locale file must contain all the keys from [enUS.lua](Localization/enUS.lua), which is the default locale. If a key doesn't need to be translated, set its value to `true`. If you need more information about how locales are handled in Soulshape Journal, please check [AceLocale's documentation](https://www.wowace.com/projects/ace3/pages/api/ace-locale-3-0?comment=1).

Your translation must be provided under a license compatible with the [MIT License](LICENSE.txt), ideally the MIT License itself, but some other copyleft licenses can work.

## Thanks and acknowledgements

This addon couldn't have been made without the help of the following people: 

* @Marlamin for helping me identifying all the soulshape 3D models with [Wow Tools](https://wow.tools/).
* @jaliborc for the [SecureTabs](https://github.com/Jaliborc/SecureTabs-2.0) lib that saved me a lot of time plugging the UI into the Collections Journal.
* RenataKane for the [Wowhead Soulshape Guide](https://fr.wowhead.com/guides/soulshapes-night-fae-covenant) that was the starting point for the information included in this addon.
* The people of [WowAce](https://www.wowace.com/) and [Ace3](https://www.wowace.com/projects/ace3) for the great scaffolding code.
* foxlit for the [Townlong Yak](https://www.townlong-yak.com/) tools.

## Planned refactorings

These are not really relevant if you're simply planning on using the addon, they're a list of technical things I'd like to explore and/or change in an upcoming version.

* Rename SoulshapeCollectionPanel to ShoulshapeJournal and generally harmonize UI names with existing Blizzard Journals.
* Convert some of the UI to XML templates where appropriate.
* Rename questID in the database to something better.
* Load more information from the game to reduce the amount of translation needed.