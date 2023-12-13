# RFJSON
-----
RFJSON is a simple edit of https://github.com/rxi/json.lua by rxi. Modifications only include getting the original code to work with Ravenscript's eco system.

**I do not own the original json.lua implementation.**

# How To Use It
To use this just drag the **RFJson** prefab into your mutator prefab. To use it, just simply access the global **rfjson** table.

The class has two functions: **rfjson:encode(value)** and **rfjson:decode(str)**. Functionally this works the same way as the original version. The only difference is instead of json, you use rfjson. Remember **the prefab must be present** in your mutator or else it will not work.

Here's a quick example:
```
local testData = 
	{
		playerLevel = 1,
		playerXp = 0,
		playerName = "RadioactiveJellyfish"
	}
local str = rfjson:encode(testData) //Returns {"playerLevel":1, "playerXp":0, "playerName":"RadioactiveJellyfish"}
local decodedData = rfjson:decode(testData) // Returns {playerLevel = 1, playerXp = 0, playerName = "RadioactiveJellyfish"}
```
