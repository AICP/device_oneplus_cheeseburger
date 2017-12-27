A full format on the data partition (to EXT4) is required before updating or you'll see "Error 7" in TWRP.
Since this build, flashing from/to LineageOS or OxygenOS no longer requires the need to format the data partition (just a wipe is needed).

Q: Why was F2FS support removed?
A: UFS 2.1 on EXT4 is basically as fast as F2FS. Secondly hardware encryption does not support FBE.

Q: Why FBE (File-based Encryption)?
A: Google decided to use FBE from Nougat onwards and supports it on EXT4. Although F2FS supports FBE too (based on EXT4 FBE), using it makes no sense.

Q: So what's the advantages?
A: We follow Google on its way to a more secure device and protection of your data. New users from other ROMs or stock OOS will no longer need to format their data partition.

Q: But what if I don't want FBE?
A: It's set to enforcing. You'll get an Error 7 in TWRP, when you're trying to flash the new version without FBE enabled.

Q: How to enable FBE?
A: Just like how you disable FBE (unencrypt) before: backup all your data (including internal storage!!!), then format your data partition, then flash the ROM.

Q: What happens if I don't follow the instructions, e.g. getting the "Error 7"?
A: Running a FBE-enabled ROM on a FBE-disabled phone will causes boot loops. So an assertion was implemented to check for FBE and prevent you from flashing by accident on an unencrypted device.
