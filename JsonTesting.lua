-- Register the behaviour
behaviour("JsonTesting")

function JsonTesting:Start()
	-- Run when behaviour is created
	local testData = 
	{
		playerLevel = 1,
		playerXp = 0,
		playerName = "RadioactiveJellyfish"
	}
	local testData2 =
	{
		playerLevel = 10,
		playerXp = 1450,
		playerName = "Player2"
	}

	local testData3 =
	{
		playerLevel = 50,
		playerXp = 10000,
		playerName = "Player3"
	}

	local dataTable = {}
	table.insert(dataTable,testData)
	table.insert(dataTable,testData2)
	table.insert(dataTable,testData3)

	local serializedData = rfjson:encode(dataTable)
	print(serializedData)
	local decodedData = rfjson:decode(serializedData)
	
	for i, v in ipairs(decodedData) do
		print(v.playerName)
	end
end

function JsonTesting:Update()
	-- Run every frame
	
end
