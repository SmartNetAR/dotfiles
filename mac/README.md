# Install

## Install Hack font
1. Search *Hack* font inside `~/Documents/Fonts` and install it.

## Alt key in Terminal
1. Terminal > Preferences > Profiles > Keyboard.
1. Uncheck 'Use option as meta key'.
1. Set *Hack* font and 18 font size.

## Alt Key in iTerm
1. iTerm Preferences > Profiles, select your profile, then the Keys tab.
1. Click Load Preset... and choose Natural Text Editing.
1. Set *Hack* font and 16 font size.
1. Hide scrollbar, iTerm > Preferences > Appearance > Window > "Hide scrollbar and resize control".

## Screen saver
1. Set **5 minutes** to start the screensaver.

## Lock computer after screen saver
1. Set require password after **5 seconds** of sleep or screen saver starts.





## Shortcuts

### BackUp

App shortcuts 
```bash
cp ~/Library/Preferences/.GlobalPreferences.plist ~/.dotfiles/mac/shortcuts/
```

Services shortcuts
```bash
cp ~/Library/Preferences/pbs.plist ~/.dotfiles/mac/shortcuts
```

Hot keys
```bash
cp ~/Library/Preferences/.GlobalPreferences.plispyenvpyenvt ~/.dotfiles/mac/shortcuts
```

### Restore

App shortcuts 
```bash
cp ~/.dotfiles/mac/shortcuts/.GlobalPreferences.plist ~/Library/Preferences
```

Services shortcuts
```bash
cp ~/.dotfiles/mac/shortcuts/pbs.plist ~/Library/Preferences
```

Hot keys
```bash
cp ~/.dotfiles/mac/shortcuts/.GlobalPreferences.plispyenvpyenvt ~/Library/Preferences
```

Enlace
```bash
ln -s /Volumes/DatosM2/projects
```
