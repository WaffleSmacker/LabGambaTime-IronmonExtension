# LabGambaTime-IronmonExtension
An extension for IronMon Twitch Streamers

## Requirements
- [Ironmon-Tracker v8.4.1](https://github.com/besteon/Ironmon-Tracker) or higher
- [Streamerbot v0.2.2](https://streamer.bot/api/releases/streamer.bot/latest/download) or higher
- [Streamerbot x Ironmon Tracker Connection](https://docs.google.com/document/d/114UW7L963bXF8WIweSZtG6khy79dy4Vhl9j021XoJQw/edit#heading=h.jcnkrt614tg4)

## Download & Install

### Tracker Setup
1) Download the [latest release](https://github.com/UTDZac/SpriteIsMe-IronmonExtension/releases/latest) of this extension from the GitHub's Releases page
2) If you downloaded a `.zip` file, first extract the contents of the `.zip` file into a new folder
3) Put the extension file(s) in the existing "**extensions**" folder found inside your Tracker folder
   - The file(s) should appear as: `[YOUR_TRACKER_FOLDER]/extensions/LabGambaTime.lua`
4) On the Tracker settings menu (click the gear icon on the Tracker window), click the "**Extensions**" button
5) In the Extensions menu, enable "**Allow custom code to run**" (if it is currently disabled)
6) Click the "**Install New**" button at the bottom to check for newly installed extensions
   - If you don't see anything in the extensions list, double-check the extension files are installed in the right location. Refer to the [Tracker wiki documentation](https://github.com/besteon/Ironmon-Tracker/wiki/Tracker-Add-ons#install-and-setup-1) if you need additional help
7) Click on the "**LabGambaTime**" extension button to view the extension and turn it on

### Streamer.bot Setup

1) (If auto-predictions set up go to step 2) Use this page to get things set up:
2) Import the following code into streamer.bot
```

```
3) Click ok to Import the commands
4) Select "[LabGambaTime] Only Run Once After Install" -> Right click "Test" in triggers -> Click "Test Trigger"<br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/5bc428d3-a4cf-4ae5-a718-d4253c87b6fb)

5) The step above sets up the initial required global variables into your streamer.bot instance.  Now predictions and resolving predictions should work!

If you want to verify that the variables have been set up correctly.
Click Variables -> Click Persisted Globals -> Order the fields by 'Last Write' -> Verify that the 3 variables have been set up correctly:<br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/230409e8-9d4e-4576-b354-747e12c40dc2)


## How to use
Once the extension is enabled and streamerbot actions are set up, a prediction should be auto created whenever you create a new seed.

Ex.
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/f4ea2ace-7edb-4421-886a-eda30f2024c8)

Wait until the prediction is over and then proceed to fight the rival!

If you beat the rival, the prediction will auto pay out the believers.


Likewise if you lose the prediction will auto pay out the doubters.
