# SPCtoMML
"Super SPC Dumper 1000"

This project providers a couple of tools for tracking SNES SPC700 files DSP output, allowing to be exported later into various formats.

Currently it only supports outputting MML with BRR files.

## Tracking Features
- Modern SPC emulation thanks for degradefactory/Alpha-II SNESAPU.
- Fast tracking though SNESAPU.DLL.
- Smart sample detection for engines that dynamically changes sample directory.

## MML exporting features:
- AddmusicK 2 specification support.
- BRR Samples support.
- ADSR/GAIN support.
- Dynamic pitch conversion.
- Noise and pitch modulation support.
- Echo support.
- Remote commands support (one GAIN/ADSR change per note).
- Automatic tempo detection.
- Automatic sample tuning.
- Staccato support.
- Automatic volume scaling.
- Simple echo slide support.

## Changelog
v1.0 (Vitor Vilela):
- Initial release

v1.1 (KevinM):
- Updated to .NET 9.0
- Updated SNESAPU.dll to v2.21.2.8822
- Fixed program crash when somehow giving an invalid sample path in MML export
- Added "Generate remote command" option to disable outputting remote commands in the MML
- Fixed instrument issue with some SPCs, where the instrument playing in a channel would be "desynced" by a note (instrument command would be generated a note early)
