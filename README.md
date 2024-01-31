# Enhanced SCPT Versus
A major patch for Splinter Cell: Pandora Tomorrow's Versus mode, addressing bugs, exploits, and enhancing gameplay.

For a full list of patch notes, refer to the [Patch Notes](PatchNotes.md) page.

If this is your first time wanting to play the Versus modes for the Splinter Cell games, it is highly recommend checking out [Enhanced SCCT Versus](https://github.com/Joshhhuaaa/EnhancedSCCTVersus) instead. SCPT Versus is often considered obsolete as SCCT Versus nearly improves every aspect of it and includes all SCPT Versus maps.

## Installation

The latest version of Enhanced SCPT Versus can be found in the [Releases](https://github.com/Joshhhuaaa/EnhancedSCPTVersus/releases) page. Please note that versions of Enhanced SCPT Versus are not compatible with the default version of the game or previous Enhanced versions.

### Game Setup

Enhanced SCPT Versus comes included with [dgVoodoo2](https://github.com/dege-diosg/dgVoodoo2), a wrapper that can restore the broken dynamic lights on modern PCs for SCPT Versus.

- After downloading Enhanced SCPT Versus, extract the contents, and you should have a Enhanced SCPT Versus folder. You can place it anywhere you like, it's portable.
- In order to play the game, first mount the disc image included in the root directory named `Mount.iso`.
- Run the game executable, `shadowstrike_static_retail.exe` in the System folder to begin playing. 

dgVoodoo2 offers smoother, less pixelated shadows than 3D-Analyze. However, some users experience an issue where their game starts tabbing out while clicking the mouse on dgVoodoo2. If that occurs, you can try using 3D-Analyze to fix the issue.

### EAX Resotration (optional)
EAX enhances the game's audio using hardware acceleration to process advanced 3D environments. Since Windows Vista, Microsoft has stripped out the DirectSound3D API, preventing EAX from functioning.

- To restore EAX functionality, run the registry file, `eax_restore.reg` in the System folder and press "Yes" to the dialog to add the registry entries.

 This registry file registers `dsound.dll` in Windows, enabling EAX to function. Please note that this registry applies only to your specific Windows user. If you create a new Windows user, you'll need to run the registry file again to restore EAX.
