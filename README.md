## luaflake 
are your nix files long enough? probably not. luaflake will tell you and judge you accordingly.

## what is this
you have nix files. luaflake counts their lines and assigns you a cortisol level based on how deep in the nix rabbithole you are. the deeper the better. touch grass is not valid advice here.

## cortisol levels
- **<50 lines** 🔴 you are either a windows user who just discovered nix, a nix-darwin user, or you have not yet begun. shameful.
- **<100 lines** 🟠 you are a beginner. your configuration.nix is basically a hello world. get to work.
- **<200 lines** 🟡 you are someway in. you have felt the pain of `nix-rebuild switch` failing at 99%. keep going.
- **<350 lines** 🟢 you are close. you smell like old coffee and have not seen the sun in days. this is progress.
- **350+ lines** ❓ you have done it. throughout the missed showers, the forgotten hydration, the vitamin D deficiency, you have ascended. you are now eligible to play [luafuck](https://github.com/ivorytechd/luafuck) once. you deserve it.

## install
```bash
git clone https://github.com/ivorytechd/luaflake
cd luaflake
sudo sh install.sh
```
## usage
```bash
cd /etc/nixos # or wherever are your nix files
luaflake
```

## requirements
- lua
- at least one .nix file
- the will to keep going

## see also
[luafuck](https://github.com/ivorytechd/luafuck) - the original low cortisol game

## license
GPLv3. freedom is low cortisol.
