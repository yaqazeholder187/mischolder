local Player = game.Players.LocalPlayer
local TrashTalk = {"UR TRASH KID", "L", "EZ", "CLIPPED", "HOW DID YOU LOSE", "WYD? LOL", "Smh", "too bad", "LOLOLO", "F", "YOU'RE GARBAGE", "GET CLAPPED" "DAWG", "NERD"}
local Mouse = Player:GetMouse()
local Cooldown = 0.1
local CooldownWaited = 0

local Key = "j"

function TalkTrash(k)
	if k == Key and CooldownWaited == 0 then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(TrashTalk[math.random(1,#TrashTalk)], "All")
		CooldownWaited = Cooldown
		
		repeat wait(Cooldown) CooldownWaited = 0 until CooldownWaited == 0
	end
end

Mouse.KeyDown:Connect(TalkTrash)
