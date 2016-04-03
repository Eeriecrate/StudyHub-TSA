TU = {};

TU.newTest = {};
TU.newTest.Visible = false;
TU.newTest.Stage = 1;
TU.newTest.Title = {};
TU.newTest.Title.Visible = false;
TU.newTest.Title.Parent = TU.newTest;
TU.newTest.Title.Size = {};
TU.newTest.Title.Size.X = 200;
TU.newTest.Title.Size.Y = 80;
TU.newTest.Title.Position = {};
TU.newTest.Title.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Title.Size.X/2));
TU.newTest.Title.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Title.Size.Y/2));
TU.newTest.TitleInput = {};
TU.newTest.TitleInput.Visible = false;
TU.newTest.TitleInput.Parent = TU.newTest;
TU.newTest.TitleInput.Size = {};
TU.newTest.TitleInput.Size.X = 150;
TU.newTest.TitleInput.Size.Y = 20;
TU.newTest.TitleInput.Scale = {};
TU.newTest.TitleInput.Scale.X = 1;
TU.newTest.TitleInput.Scale.Y = 1;
TU.newTest.TitleInput.Position = {};
TU.newTest.TitleInput.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.TitleInput.Size.X/2));
TU.newTest.TitleInput.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.TitleInput.Size.Y/2))+5;
TU.newTest.TitleInput.Text = "asdasds";
table.insert(require("MouseFunctions").Available,TU.newTest.TitleInput);
function TU.newTest.TitleInput.Clicked()
	require("MouseFunctions").Selected = TU.newTest.TitleInput;
	print("Clicked");
end
function TU.newTest.toggleVisiblity()
	--[[I guess using the operator should probably save it from having to use logic.]]--
	TU.newTest.Visible = not TU.newTest.Visible;
	TU.newTest.Title.Visible = TU.newTest.Visible;
	TU.newTest.TitleInput.Visible = TU.newTest.Visible;
end

function TU.updatePositions()
	TU.newTest.Title.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Title.Size.X/2));
	TU.newTest.Title.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Title.Size.Y/2));
	TU.newTest.TitleInput.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.TitleInput.Size.X/2));
	TU.newTest.TitleInput.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.TitleInput.Size.Y/2))+10;
end


return TU;
