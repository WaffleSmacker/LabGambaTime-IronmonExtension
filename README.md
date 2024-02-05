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

Once the extension is turned on it will auto-create predictions and resolve them in the lab.
If you don't want to do lab predictions anymore, make sure to turn the extension off!

**--Important!--** If you reset the seed before your pokemon faints the gamba will not pay out.  Make sure to accept your fate to have the extension work correctly :)

Once the extension is enabled and streamerbot actions are set up, a prediction should be auto created whenever you create a new seed.

Ex.
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/f4ea2ace-7edb-4421-886a-eda30f2024c8) <br>

Wait until the prediction is over and then proceed to fight the rival!

If you beat the rival, the prediction will auto pay out the believers. <br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/bb354acb-981a-453d-913e-2d4db3a21dab)


Likewise if you lose the prediction will auto pay out the doubters.<br>
![image](https://github.com/WaffleSmacker/LabGambaTime-IronmonExtension/assets/131427794/8c3b5279-0fca-47d9-aa9e-a9b32bf6ea4e)

