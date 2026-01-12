--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 8 | Scripts: 3 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.notice
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[notice]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.notice.TextButton
G2L["2"] = Instance.new("TextButton", G2L["1"]);
G2L["2"]["TextWrapped"] = true;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["TextSize"] = 14;
G2L["2"]["TextScaled"] = true;
G2L["2"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2"]["Size"] = UDim2.new(0, 658, 0, 66);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Text"] = [[Neuron has moved! Please go back to scriptblox to copy the new execution code! ]];
G2L["2"]["Position"] = UDim2.new(0.25702, 0, 0.45875, 0);


-- StarterGui.notice.TextButton.LocalScript
G2L["3"] = Instance.new("LocalScript", G2L["2"]);



-- StarterGui.notice.TextLabel
G2L["4"] = Instance.new("TextLabel", G2L["1"]);
G2L["4"]["TextWrapped"] = true;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextSize"] = 14;
G2L["4"]["TextScaled"] = true;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Size"] = UDim2.new(0, 596, 0, 17);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[Click the button below to delete this annoation]];
G2L["4"]["Position"] = UDim2.new(0.27991, 0, 0.4375, 0);


-- StarterGui.notice.TextButton
G2L["5"] = Instance.new("TextButton", G2L["1"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextScaled"] = true;
G2L["5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5"]["Size"] = UDim2.new(0, 596, 0, 25);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[https://discord.com/invite/PQcNPDx7DG]];
G2L["5"]["Position"] = UDim2.new(0.27991, 0, 0.3125, 0);


-- StarterGui.notice.TextButton.LocalScript
G2L["6"] = Instance.new("LocalScript", G2L["5"]);



-- StarterGui.notice.TextButton
G2L["7"] = Instance.new("TextButton", G2L["1"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextScaled"] = true;
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["7"]["Size"] = UDim2.new(0, 596, 0, 103);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[
--// Made by Intorter
--// https://discord.com/invite/PQcNPDx7DG

loadstring(game:HttpGet("https://raw.githubusercontent.com/kainenruslana/neuron/refs/heads/main/NeuronMain"))()
auth="main";]];
G2L["7"]["Position"] = UDim2.new(0.27991, 0, 0.1625, 0);


-- StarterGui.notice.TextButton.LocalScript
G2L["8"] = Instance.new("LocalScript", G2L["7"]);



-- StarterGui.notice.TextButton.LocalScript
local function C_3()
local script = G2L["3"];
	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
		if screenGui then
			screenGui:Destroy()
		end
	end)
	
end;
task.spawn(C_3);
-- StarterGui.notice.TextButton.LocalScript
local function C_6()
local script = G2L["6"];
	local button = script.Parent
	
	local function copyToClipboard(text)
		if typeof(setclipboard) == "function" then
			setclipboard(text)
			return true
		end
	
		if typeof(toclipboard) == "function" then
			toclipboard(text)
			return true
		end
	
		if typeof(syn) == "table" and typeof(syn.write_clipboard) == "function" then
			syn.write_clipboard(text)
			return true
		end
	
		return false
	end
	
	button.MouseButton1Click:Connect(function()
		local text = button.Text
		local success = copyToClipboard(text)
	
		if not success then
			warn("Clipboard API not available (no executor or unsupported executor)")
		end
	end)
	
end;
task.spawn(C_6);
-- StarterGui.notice.TextButton.LocalScript
local function C_8()
local script = G2L["8"];
	local button = script.Parent
	
	local function copyToClipboard(text)
		if typeof(setclipboard) == "function" then
			setclipboard(text)
			return true
		end
	
		if typeof(toclipboard) == "function" then
			toclipboard(text)
			return true
		end
	
		if typeof(syn) == "table" and typeof(syn.write_clipboard) == "function" then
			syn.write_clipboard(text)
			return true
		end
	
		return false
	end
	
	button.MouseButton1Click:Connect(function()
		local text = button.Text
		local success = copyToClipboard(text)
	
		if not success then
			warn("Clipboard API not available (no executor or unsupported executor)")
		end
	end)
	
end;
task.spawn(C_8);

return G2L["1"], require;
