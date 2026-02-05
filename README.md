 # Neow's Boons

  A simple utility to enable the "4 rewards" blessing option from Neow for
  all characters in Slay the Spire.

  ## About

  In Slay the Spire, Neow offers either 2 or 4 reward options at the start
  of a run, depending on whether you've defeated the Act 1 boss with that
  character. This is controlled by a "spirits" value in the `STSPlayer`
  file.

  This script automatically sets the spirits value to `1` for all four
  characters (Ironclad, Silent, Defect, and Watcher), unlocking the full
  4-option blessing menu.

  **Note:** This does not affect achievements or any other game progress.

  ## Installation

  1. Download `EnableSpirits.bat` and `EnableSpirits.ps1` from this
  repository
  2. Place both files in the same folder (anywhere you like)

  ## Usage

  1. **Close Slay the Spire completely**
  2. *(Recommended)* Back up your `preferences` folder located at:
     C:\Program Files (x86)\Steam\steamapps\common\SlayTheSpire\preferences
  3. Run `EnableSpirits.bat`
  4. Click **Yes** on the UAC prompt
  5. The script will confirm that the `STSPlayer` file has been updated

  ## Custom Install Location

  If you've installed Slay the Spire to a non-default directory, edit the
  first line of `EnableSpirits.ps1` to point to your `STSPlayer` file:

  ```powershell
  $path = "C:\Program Files
  (x86)\Steam\steamapps\common\SlayTheSpire\preferences\STSPlayer"

  Change it to your custom location:

  ex: $path = "D:\Games\SlayTheSpire\preferences\STSPlayer" etc etc

  Any text editor (including Notepad) will work for this.

 ## Security Notice

  You should always exercise caution when downloading and executing scripts
  from the internet.

  This utility requires two files because PowerShell needs a batch file
  wrapper to request administrator privileges (required for writing to
  Program Files). The code is intentionally simple and readable so you can
  verify what it does before running it.

  Recommendations:
  - Only download these files from this official repository
  - Review the code yourself if you're uncertain
  - Alternatively, move your Slay the Spire installation outside of Program
  Files to avoid needing admin privileges, then update the path in the .ps1
  file

  If you're uncomfortable running scripts, don't use this tool.

  License

  MIT
  ```
