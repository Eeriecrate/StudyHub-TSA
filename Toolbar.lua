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
	require("TestUI").newTest.toggleVisiblity();
end

Toolbar.Tools.Edit = {};
table.insert(require("MouseFunctions").Available,Toolbar.Tools.Edit);
Toolbar.Tools.Edit.Scale = {};
Toolbar.Tools.Edit.Text = "Edit";
Toolbar.Tools.Edit.Scale.X = 1;
Toolbar.Tools.Edit.Scale.Y = 1;
Toolbar.Tools.Edit.Position = {};
Toolbar.Tools.Edit.Position.X = 85;
Toolbar.Tools.Edit.Position.Y = 2;
Toolbar.Tools.Edit.Size = {};
Toolbar.Tools.Edit.Size.X = 75;
Toolbar.Tools.Edit.Size.Y = 20; 
Toolbar.Tools.Edit.Parent = Toolbar;
Toolbar.Tools.Edit.Visible = true;
Toolbar.Tools.Edit.Clicked = function()
	print("Placeholder");
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
	print("Placeholder");
end

function Toolbar.updatePositions()
	Toolbar.Resize.Position.X = love.graphics.getWidth()-22.5;
	Toolbar.Resize.Position.Y = 3;
end


return Toolbar