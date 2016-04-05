Toolbar = {};
Toolbar.Visible = true;
Toolbar.Size = {};
Toolbar.Size.Y = 20;
Toolbar.Header = love.graphics.newImage("Art/Toolbar.png");
Toolbar.Footer = love.graphics.newImage("Art/Footer.png");
Toolbar.Tools = {};
--[[Well, that's one way to emulate an object.]]--
Toolbar.Resize = {};
table.insert(require("MouseFunctions").Available,Toolbar.Resize);
Toolbar.Resize.image = love.graphics.newImage("Art/Resize.png");
Toolbar.Resize.Scale = {};
Toolbar.Resize.Scale.X = 3;
Toolbar.Resize.Scale.Y = 3;
Toolbar.Resize.Position = {};
Toolbar.Resize.Position.X = love.graphics.getWidth()-22.5;
Toolbar.Resize.Position.Y = 1;
Toolbar.Resize.Size = {};
Toolbar.Resize.Size.X = 5;
Toolbar.Resize.Size.Y = 5;
Toolbar.Resize.Parent = Toolbar;
Toolbar.Resize.Visible = true;
Toolbar.Resize.Clicked = function()
	require("Options").toggleFullscreen();
end

Toolbar.Tools.New = {};
table.insert(require("MouseFunctions").Available,Toolbar.Tools.New);
Toolbar.Tools.New.Scale = {};
Toolbar.Tools.New.Text = "New";
Toolbar.Tools.New.Scale.X = 1;
Toolbar.Tools.New.Scale.Y = 1;
Toolbar.Tools.New.Position = {};
Toolbar.Tools.New.Position.X = 5;
Toolbar.Tools.New.Position.Y = 2;
Toolbar.Tools.New.Size = {};
Toolbar.Tools.New.Size.X = 75;
Toolbar.Tools.New.Size.Y = 20; 
Toolbar.Tools.New.Parent = Toolbar;
Toolbar.Tools.New.Visible = true;
Toolbar.Tools.New.Clicked = function()
	if not require("TestUI").newTest.Details.Visible and not require("TestUI").Delete.Visible and not require("TestUI").takeTest.Visible and not require("TestUI").Test.Visible then
		require("TestUI").newTest.toggleVisiblity();
	end
end

Toolbar.Tools.Test = {};
table.insert(require("MouseFunctions").Available,Toolbar.Tools.Test);
Toolbar.Tools.Test.Scale = {};
Toolbar.Tools.Test.Text = "Test";
Toolbar.Tools.Test.Scale.X = 1;
Toolbar.Tools.Test.Scale.Y = 1;
Toolbar.Tools.Test.Position = {};
Toolbar.Tools.Test.Position.X = 85;
Toolbar.Tools.Test.Position.Y = 2;
Toolbar.Tools.Test.Size = {};
Toolbar.Tools.Test.Size.X = 75;
Toolbar.Tools.Test.Size.Y = 20; 
Toolbar.Tools.Test.Parent = Toolbar;
Toolbar.Tools.Test.Visible = true;
Toolbar.Tools.Test.Clicked = function()
	if not require("TestUI").newTest.Visible and not require("TestUI").Delete.Visible  and not require("TestUI").Test.Visible then
		require("TestUI").takeTest.Visible = not(require("TestUI").takeTest.Visible);
		require("TestUI").takeTest.Number = 1;
	end
end



Toolbar.Tools.Delete = {};
table.insert(require("MouseFunctions").Available,Toolbar.Tools.Delete);
Toolbar.Tools.Delete.Scale = {};
Toolbar.Tools.Delete.Text = "Delete";
Toolbar.Tools.Delete.Scale.X = 1;
Toolbar.Tools.Delete.Scale.Y = 1;
Toolbar.Tools.Delete.Position = {};
Toolbar.Tools.Delete.Position.X = 165;
Toolbar.Tools.Delete.Position.Y = 2;
Toolbar.Tools.Delete.Size = {};
Toolbar.Tools.Delete.Size.X = 75;
Toolbar.Tools.Delete.Size.Y = 20; 
Toolbar.Tools.Delete.Parent = Toolbar;
Toolbar.Tools.Delete.Visible = true;
Toolbar.Tools.Delete.Clicked = function()
	if not require("TestUI").newTest.Visible and not require("TestUI").takeTest.Visible and not require("TestUI").Test.Visible then
		require("TestUI").Delete.Visible = not(require("TestUI").Delete.Visible);
		require("TestUI").Delete.Number = 1;
	end
end

function Toolbar.updatePositions()
	Toolbar.Resize.Position.X = love.graphics.getWidth()-22.5;
	Toolbar.Resize.Position.Y = 3;
end


return Toolbar