local children = 3 -- Insert number of children(paths) here
local randomnumber = script.Parent:FindFirstChild("RandomNumber")
local randomenabled = script.Parent.Settings:FindFirstChild("RandomEnabled")
local count = 1
local paths = script.Parent:FindFirstChild("Paths")
local touchedscript = script.Parent:FindFirstChild("TouchedScript") 

-- Duplicates the script to each of the paths in the "Paths" folder
for _,v in pairs(paths:GetChildren()) do
	local path = paths:FindFirstChild(tostring(count)) 
	local clone = touchedscript:Clone()
	clone.Parent = path
	clone.Disabled = false
	count += 1
end  

-- Random Number Handler
if randomenabled.Value == true then
	randomnumber.Value = randomnumber.Value + math.random(1, children)
end

-- Deletes the "README" file
if script.Parent:FindFirstChild("README") then
	script.Parent.README:Destroy()
end
 