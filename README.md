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
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/796c8ebe-638c-4f24-8f1d-1f759ff25ede)


### Streamer.bot Setup

1) Import the following code into streamer.bot
```
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
```
2) Click ok to Import the commands <br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/d1576ca5-761b-41ae-b8d8-53cb387eac2b) <br>

3) Select "[LabGambaTime] Only Run Once After Install" -> Right click "Test" in triggers -> Click "Test Trigger"<br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/5bc428d3-a4cf-4ae5-a718-d4253c87b6fb) <br>

4) The step above sets up the initial required global variables into your streamer.bot instance.  Now predictions and resolving predictions should work!

Optional
- If you want to verify that the variables have been set up correctly. Click Variables -> Click Persisted Globals -> Order the fields by 'Last Write' -> Verify that the 3 variables have been set up correctly: <br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/230409e8-9d4e-4576-b354-747e12c40dc2) <br>

- Change the messages in "[LabGambaTime] Result - Option1 [Use to resolve prediction]" or "[LabGambaTime] Result - Option2 [Use to resolve prediction]" to add more personal flair. <br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/903ceaf5-8a97-49c5-9920-02eeb8111a2e)


## How to use
Once the extension is enabled and streamerbot actions are set up, a prediction should be auto created whenever you create a new seed.

Ex.
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/f4ea2ace-7edb-4421-886a-eda30f2024c8) <br>

Wait until the prediction is over and then proceed to fight the rival!

If you beat the rival, the prediction will auto pay out the believers. <br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/bb354acb-981a-453d-913e-2d4db3a21dab)


Likewise if you lose the prediction will auto pay out the doubters.<br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/8c3b5279-0fca-47d9-aa9e-a9b32bf6ea4e)

