![](./Assets/Rendered/logo.png)

![](./Assets/Rendered/steamdeck-hero.webp)

> *This is a stub repository for my small modpack. Eventually, it will be replaced with the packwiz toml files. In the meantime, please report any issues you're experiencing in the [issue tracker](https://github.com/yeenbean/zimas-vanillaplus/issues).*

Zima's Vanilla+ is a compact modpack designed to enhance performance and bring minor QoL improvements to the vanilla Minecraft experience. Unlike other vanilla modpacks, Zima's Vanilla+ uses as few mods as possible to minimize impact on performance.

Zima's Vanilla+ comes in two editions: NeoForge and Fabric. The editions are identical, with the exception of Euphonium replacing AmbientSounds in the Fabric variant.

---

## QoL Overview

This modpack introduces a change to tree farming with the FallingTree mod. When players chop down a tree with an axe, the entire trunk will break instantly into logs. The number of logs broken will still affect the axe's durability. If the player's axe breaks while chopping a tree, the entire tree will still fall. FallingTree will not interfere with vanilla servers, and you can leave it enabled when joining them.

Along with FallingTree, this modpack brings additional QoL improvements, including:

- Native controller support, including Steam Deck
- A minimap and world map
- Sound mods, including post-processing, UI sounds, and ambient sounds
- Improvements to the inventory UI and UX

## Preconfigured Settings

By default, the game comes with the Pixel Perfect shaderpack enabled, and a capped framerate of 30 FPS. This is to prevent overheating on laptop devices or low-end machines. Desktop players may want to adjust their framerate cap on first launch. Players with low-performance machines may want to consider switching to the VanillAA shaderpack or disabling shaders altogether.

### Steam Deck

This modpack targets 30 FPS on Steam Deck when limiting the TDP to 8 watts. However, if you don't mind sacrificing battery life, you can always uncap your framerate for a smoother experience. Additionally, even with the 8-watt TDP setting, you should achieve a 60/90 FPS target when using VanillAA or disabling shaders altogether.

This modpack is not yet perfect in some areas wrt performance. For example,
frametime may dip when chunks are loading or generating during usual gameplay.
As I explore further ways to improve performance, these performance issues will
be fleshed out. In the meantime, you may want to raise your TDP to 10 watts.
