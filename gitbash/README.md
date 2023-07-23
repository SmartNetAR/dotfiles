## Git bash windows
1. Delete C:\Program Files\Git\etc\profile.d\aliases.sh
1. Run in CMD as admin
```powershell
mklink "C:\Program Files\Git\etc\profile.d\aliases.sh" "c:\projects\.dotfiles\gitbash\aliases.sh"
```
