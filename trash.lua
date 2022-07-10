local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "ur bad";
    "rat";
    "ez";
    "my grandma has more skill than you";
    "trash";
    "LOL";
    "imagine being you right now";
    "xd";
    "stinky head";
    "you lose";
    "uky = win";
    "why do you even try";
    "I didn't think being this bad was possible";
    "leave";
    "no skill";
    "ahahahahahahaha";
    "bad";
    "you're nothing";
    "uky on top kid";
    "so trash";
    "so bad";
    "ur salty";
    "Internet explorer is faster than your reactions";
    "look he's mad";
    "cry more";
    "keep crying";
    "cry baby";
    "hahaha I won";
    "no one likes u";
    "darn";
    "thank you for your time";
    "you were so close!";
    "get good, get uky";
    "better luck next time!";
    "rodent";
    "XD";
    "/e dab";
    "free wanted LOL";
    "time to take out the trash";
    "uky winning, L";
    "did you get worse?";
    "I'm surprised you haven't quit yet";
    "Man your aim is nothing.";










}


function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
