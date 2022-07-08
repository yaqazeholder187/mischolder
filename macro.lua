local Player = game:GetService("Players").LocalPlayer
			local Mouse = Player:GetMouse()
			local SpeedGlitch = false
			local Wallet = Player.Backpack:FindFirstChild("Wallet")

			local UniversalAnimation = Instance.new("Animation")

			function stopTracks()
				for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
					if (v.Animation.AnimationId:match("rbxassetid")) then
						v:Stop()
					end
				end
			end

			function loadAnimation(id)
				if UniversalAnimation.AnimationId == id then
					stopTracks()
					UniversalAnimation.AnimationId = "1"
				else
					UniversalAnimation.AnimationId = id
					local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
					animationTrack:Play()
				end
			end

			Mouse.KeyDown:Connect(function(Key)
				if Key == "z" then
					SpeedGlitch = not SpeedGlitch
					if SpeedGlitch == true then
						loadAnimation("rbxassetid://3189777795")
						wait(1.5)
						Wallet.Parent = Player.Character
						wait(0.15)
						Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
						wait(0.05)
						repeat game:GetService("RunService").Heartbeat:wait()
							keypress(0x49)
							game:GetService("RunService").Heartbeat:wait()
							keypress(0x4F)
							game:GetService("RunService").Heartbeat:wait()
							keyrelease(0x49)
							game:GetService("RunService").Heartbeat:wait()
							keyrelease(0x4F)
							game:GetService("RunService").Heartbeat:wait()
						until SpeedGlitch == false
					end
				end
			end)