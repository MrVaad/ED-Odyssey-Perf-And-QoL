# ED-Odyssey-Perf-And-QoL
This mod uses a great 3rd party tool (3DMigoto) to disable some shaders for performance or quality of life.
Each shader can be disabled independently with hotkeys or using settings in d3dx.ini (at the beginning of the file)

Currently the mod can disable the following shaders :
- Helmet and breath effect
- screenglare on foot
- indoor  glass reflection
- outdoor glass reflection 
- galaxy stars brightness on foot
- galaxy clouds/nebulae

The glass reflection shaders are the most problematic. There's one for indoor buildings/concourse and one for outdoor (the outdoor one is also used in the concourse, when looking outside).  
The other ones are more about quality of life 
  
## Install instructions  

1.  Download 3Dmigoto (1.3.16 is the last version) : [https://github.com/bo3b/3Dmigoto/releases/download/1.3.16/3Dmigoto-1.3.16.zip](https://github.com/bo3b/3Dmigoto/releases/download/1.3.16/3Dmigoto-1.3.16.zip)
2.  Unzip the file
3.  Copy the following files from the x64 folder, to your Elite folder  
    Standalone: [Elite install folder]\Products\elite-dangerous-odyssey-64\  
    Steam : [steam install folder]\steamapps\common\Elite Dangerous\Products\elite-dangerous-odyssey-64\)  
    `d3d11.dll
    d3dcompiler_46.dll
    nvapi64.dll
    uninstall.bat (this one is optional but it allows you to remove 3Dmigoto easily)`
4. Get the mod from the release page
4. Unzip the file
5. Copy the d3dx.ini in attachment to the same Elite folder.

## Usage   
SHIFT+F1 enable/disable the helmet and breath effect (in first person view)  
SHIFT+F2 enable/disable the screenglare effect  
SHIFT+F3 enable/disable the indoor glass shader effect (windows, guardrails, glasses, mission consoles)  
SHIFT+F4 enable/disable the outdoor glass shader effect (windows mainly)  
SHIFT+F5 enable/disable the galaxy stars brightness on foot (works in tutorial, doesn't have an effect on all planets, need to test in space)  
SHIFT+F6 enable/disable the galaxy clouds/nebulae (works in tutorial, doesn't have an effect on all planets, need to test in space)  
 
SHIFT+F11 reload the config file d3dx.ini
 
## Editing d3dX.ini   
To enable/disable the shaders by default, change the lines in the 'INITIAL VALUES' section in d3dx.ini (xxx=1 or xxx=0)  
Remove the shader hotkeys and shader commands section if you don't want to use the hotkeys.  
  
## Is Frontier Ok with this ?  
3Dmigoto is used by a lot of mods, including some Elite mods like EDHM from _GeorjCostanza_ and the "Amazingly Realistic Immersion Mod" from _Old Duck_  
From what i saw in EDHM's post, Cmdr Exigeous asked FDEV about EDHM usage (which uses 3Dmigoto) and the response was :  
**"FDev are fine with the mod so long as it doesn't provide an advantage over other players, or mod their ARX-related assets"**  
 As i'm only disabling *the helmet shader/windows reflection shaders/screenglare*, I think it does not provide any advantage to players.
