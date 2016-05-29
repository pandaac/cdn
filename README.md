# [cdn.pandaac.io](https://cdn.pandaac.io)
Open Tibia resource hosting by [pandaac](https://github.com/pandaac).

## Disclaimer!
> _As of right now, this is not an actual Content Delivery Network (CDN), and is simply hosted on one of our servers in Amsterdam, The Netherlands (EU). When [pandaac](https://github.com/pandaac) eventually reaches a point of which a stable version is imminent, we will most likely pay for a proper CDN._

## Resources
You may freely assign any extension (`.png`, `.jpg`, `.jpeg` or `.gif`) to the resource URLs, however, they are not required and may be omitted altogether.

#### [Creatures](https://github.com/pandaac-cdn/creatures)
**Branches:** [1076](https://github.com/pandaac-cdn/creatures/tree/1076)
```
https://cdn.pandaac.io/creatures/{branch}/{creature}
```
**Example:**
```
https://cdn.pandaac.io/creatures/1076/giant-spider
```
![Giant Spider](https://cdn.pandaac.io/creatures/1076/giant-spider)

===

#### [Items](https://github.com/pandaac-cdn/items)
**Branches:** [1076](https://github.com/pandaac-cdn/items/tree/1076), [1030](https://github.com/pandaac-cdn/items/tree/1030), [960](https://github.com/pandaac-cdn/items/tree/960), [860](https://github.com/pandaac-cdn/items/tree/860)
```
https://cdn.pandaac.io/items/{branch}/{item-id}
```
**Example:**
```
https://cdn.pandaac.io/items/1076/2400
```
![Sword of Valor](https://cdn.pandaac.io/items/1076/2400)

===

#### [Spells](https://github.com/pandaac-cdn/spells)
**Branches:** [1076](https://github.com/pandaac-cdn/spells/tree/1076)
```
https://cdn.pandaac.io/spells/{branch}/{spell}
```
**Example:**
```
https://cdn.pandaac.io/spells/1076/annihilation
```
![Annihilation](https://cdn.pandaac.io/spells/1076/annihilation)

===

#### [Flags](https://github.com/pandaac-cdn/flags)
**Branches:** [master](https://github.com/pandaac-cdn/flags/tree/master)
```
https://cdn.pandaac.io/flags/{branch}/{country-code}
```
**Example:**
```
https://cdn.pandaac.io/flags/master/us
```
![United States](https://cdn.pandaac.io/flags/master/us)

===

#### [Default (and/or missing) images](https://github.com/pandaac-cdn/defaults)
If you're trying to link to a non-existant resource, you will be presented with a fallback image. The design of the image depends on what kind of a resource you're trying to access. But they are all in the same general theme, a black, transparent shape representing the category of the given resource.

**Creature fallback**
![Creature Fallback](https://cdn.pandaac.io/creatures/1076/fallback)

**Item fallback**
![Item Fallback](https://cdn.pandaac.io/items/1076/fallback)

**Spell fallback**
![Spell Fallback](https://cdn.pandaac.io/spells/1076/fallback)

**Flag fallback**
![Flag Fallback](https://cdn.pandaac.io/flags/master/fallback)

If your theme utilises a dark background however, these images may be very difficult to see. In those cases, you'll want to prefix your resource category with `/w/` to get their white counterparts. E.g.
```
https://cdn.pandaac.io/creatures/1076/giant-spider
https://cdn.pandaac.io/items/1076/2400
https://cdn.pandaac.io/spells/1076/annihilation
https://cdn.pandaac.io/flags/master/us
```
becomes
```
https://cdn.pandaac.io/w/creatures/1076/giant-spider
https://cdn.pandaac.io/w/items/1076/2400
https://cdn.pandaac.io/w/spells/1076/annihilation
https://cdn.pandaac.io/w/flags/master/us
```

## Contributing
If you would like to contribute to the CDN, please submit any issues, feature or pull requests to the appropriate repository on the **[pandaac-cdn](https://github.com/pandaac-cdn)** organisation. Any pull requests to this repository will be ignored.
