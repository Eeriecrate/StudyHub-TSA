TU = {};
TU.localTest = {};
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
TU.newTest.TitleInput.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.TitleInput.Size.Y/2))-10;
TU.newTest.TitleInput.Text = "Type title here";
table.insert(require("MouseFunctions").Available,TU.newTest.TitleInput);
function TU.newTest.TitleInput.Clicked()
	if TU.newTest.TitleInput.Text == "Type title here" then
		TU.newTest.TitleInput.Text = ""
	end
	require("MouseFunctions").Selected = TU.newTest.TitleInput;
	print("Clicked");
end


TU.newTest.Confirm = {};
TU.newTest.Confirm.Visible = false;
TU.newTest.Confirm.Parent = TU.newTest;
TU.newTest.Confirm.Size = {};
TU.newTest.Confirm.Size.X = 50;
TU.newTest.Confirm.Size.Y = 20;
TU.newTest.Confirm.Scale = {};
TU.newTest.Confirm.Scale.X = 1;
TU.newTest.Confirm.Scale.Y = 1;
TU.newTest.Confirm.Position = {};
TU.newTest.Confirm.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Confirm.Size.X/2))+75;
TU.newTest.Confirm.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Confirm.Size.Y/2))+30;
TU.newTest.Confirm.Text = "Next";
table.insert(require("MouseFunctions").Available,TU.newTest.Confirm);
function TU.newTest.Confirm.Clicked()
	TU.newTest.toggleVisiblity();
	TU.newTest.TitleInput.Text = "Type title here";
	TU.localTest = {};
	TU.localTest.Questions = {};
	TU.localTest.Name = TU.newTest.TitleInput.Text;
	TU.newTest.Details.Visible = true;
end


TU.newTest.Cancel = {};
TU.newTest.Cancel.Visible = false;
TU.newTest.Cancel.Parent = TU.newTest;
TU.newTest.Cancel.Size = {};
TU.newTest.Cancel.Size.X = 50;
TU.newTest.Cancel.Size.Y = 20;
TU.newTest.Cancel.Scale = {};
TU.newTest.Cancel.Scale.X = 1;
TU.newTest.Cancel.Scale.Y = 1;
TU.newTest.Cancel.Position = {};
TU.newTest.Cancel.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Cancel.Size.X/2))-75;
TU.newTest.Cancel.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Cancel.Size.Y/2))+30;
TU.newTest.Cancel.Text = "Cancel";
table.insert(require("MouseFunctions").Available,TU.newTest.Cancel);
function TU.newTest.Cancel.Clicked()
	TU.newTest.toggleVisiblity();
	TU.newTest.TitleInput.Text = "Type title here";
end

TU.newTest.Details = {};
TU.newTest.Details.Visible = false;
TU.newTest.Details.Parent = TU.newTest;
TU.newTest.Details.Size = {};
TU.newTest.Details.Size.X = 770;
TU.newTest.Details.Size.Y = 150;
TU.newTest.Details.Position = {};
TU.newTest.Details.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Details.Size.X/2));
TU.newTest.Details.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Details.Size.Y/2));

TU.newTest.Question = {};
TU.newTest.Question.Visible = true;
TU.newTest.Question.Parent = TU.newTest.Details;
TU.newTest.Question.Size = {};
TU.newTest.Question.Size.X = 700;
TU.newTest.Question.Size.Y = 20;
TU.newTest.Question.Scale = {};
TU.newTest.Question.Scale.X = 1;
TU.newTest.Question.Scale.Y = 1;
TU.newTest.Question.Position = {};
TU.newTest.Question.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Question.Size.X/2));
TU.newTest.Question.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Question.Size.Y/2))-100;
TU.newTest.Question.Text = "Type question here";
table.insert(require("MouseFunctions").Available,TU.newTest.Question);
function TU.newTest.Question.Clicked()
	if TU.newTest.Question.Text == "Type question here" then
		TU.newTest.Question.Text = ""
	end
	require("MouseFunctions").Selected = TU.newTest.Question;
end

TU.newTest.Answer = {};
TU.newTest.Answer.Visible = true;
TU.newTest.Answer.Parent = TU.newTest.Details;
TU.newTest.Answer.Size = {};
TU.newTest.Answer.Size.X = 700;
TU.newTest.Answer.Size.Y = 20;
TU.newTest.Answer.Scale = {};
TU.newTest.Answer.Scale.X = 1;
TU.newTest.Answer.Scale.Y = 1;
TU.newTest.Answer.Position = {};
TU.newTest.Answer.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Answer.Size.X/2));
TU.newTest.Answer.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Answer.Size.Y/2));
TU.newTest.Answer.Text = "Type answer here";
table.insert(require("MouseFunctions").Available,TU.newTest.Answer);
function TU.newTest.Answer.Clicked()
	if TU.newTest.Answer.Text == "Type answer here" then
		TU.newTest.Answer.Text = ""
	end
	require("MouseFunctions").Selected = TU.newTest.Answer;
end

TU.newTest.Next = {};
TU.newTest.Next.Visible = true;
TU.newTest.Next.Parent = TU.newTest.Details;
TU.newTest.Next.Size = {};
TU.newTest.Next.Size.X = 100;
TU.newTest.Next.Size.Y = 20;
TU.newTest.Next.Scale = {};
TU.newTest.Next.Scale.X = 1;
TU.newTest.Next.Scale.Y = 1;
TU.newTest.Next.Position = {};
TU.newTest.Next.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Next.Size.X/2))+100;
TU.newTest.Next.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Next.Size.Y/2))+35;
TU.newTest.Next.Text = "Next Question";
table.insert(require("MouseFunctions").Available,TU.newTest.Next);
function TU.newTest.Next.Clicked()
	if TU.newTest.Answer.Text ~= "Type answer here" and TU.newTest.Question.Text ~= "Type question here" then
		local Question = {};
		Question.Question = TU.newTest.Question.Text;
		Question.Answer = TU.newTest.Answer.Text;
		TU.newTest.Answer.Text = "Type answer here";
		TU.newTest.Question.Text = "Type question here";
		table.insert(TU.localTest.Questions,Question);
	end
end

TU.newTest.Finish = {};
TU.newTest.Finish.Visible = true;
TU.newTest.Finish.Parent = TU.newTest.Details;
TU.newTest.Finish.Size = {};
TU.newTest.Finish.Size.X = 100;
TU.newTest.Finish.Size.Y = 20;
TU.newTest.Finish.Scale = {};
TU.newTest.Finish.Scale.X = 1;
TU.newTest.Finish.Scale.Y = 1;
TU.newTest.Finish.Position = {};
TU.newTest.Finish.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Finish.Size.X/2))-100;
TU.newTest.Finish.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Finish.Size.Y/2))+35;
TU.newTest.Finish.Text = "Save Test";
table.insert(require("MouseFunctions").Available,TU.newTest.Finish);
function TU.newTest.Finish.Clicked()
	if TU.newTest.Answer.Text ~= "Type answer here" and TU.newTest.Question.Text ~= "Type question here" then
		if not(#TU.localTest.Questions < 4) then
		local Question = {};
		Question.Question = TU.newTest.Question.Text;
		Question.Answer = TU.newTest.Answer.Text;
		TU.newTest.Answer.Text = "Type answer here";
		TU.newTest.Question.Text = "Type question here";
		table.insert(TU.localTest.Questions,Question);
		else
			TU.newTest.Warning.Counter = 250;
		end
	end
	if #TU.localTest.Questions < 4 then
		TU.newTest.Warning.Counter = 250;
	else
		TU.newTest.Details.Visible = false;
		table.insert(require("Data").Tests,TU.localTest);
	end
end

TU.newTest.Warning = {};
TU.newTest.Warning.Counter = 0;
TU.newTest.Warning.Visible = true;
TU.newTest.Warning.Parent = TU.newTest.Details;
TU.newTest.Warning.Size = {};
TU.newTest.Warning.Size.X = 770;
TU.newTest.Warning.Size.Y = 20;
TU.newTest.Warning.Scale = {};
TU.newTest.Warning.Scale.X = 1;
TU.newTest.Warning.Scale.Y = 1;
TU.newTest.Warning.Position = {};
TU.newTest.Warning.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Warning.Size.X/2));
TU.newTest.Warning.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Warning.Size.Y/2))+75;
TU.newTest.Warning.Text = "MINIMUM OF 4 QUESTIONS";



function TU.newTest.toggleVisiblity()
	--[[I guess using the operator should probably save it from having to use logic.]]--
	TU.newTest.Visible = not TU.newTest.Visible;
	TU.newTest.Title.Visible = TU.newTest.Visible;
	TU.newTest.TitleInput.Visible = TU.newTest.Visible;
	TU.newTest.Confirm.Visible = TU.newTest.Visible;
	TU.newTest.Cancel.Visible = TU.newTest.Visible;
end

function TU.updatePositions()
	TU.newTest.Title.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Title.Size.X/2));
	TU.newTest.Title.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Title.Size.Y/2));
	TU.newTest.TitleInput.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.TitleInput.Size.X/2));
	TU.newTest.TitleInput.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.TitleInput.Size.Y/2));
	TU.newTest.Confirm.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Confirm.Size.X/2))+75;
	TU.newTest.Confirm.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Confirm.Size.Y/2))+30;
	TU.newTest.Cancel.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Cancel.Size.X/2))-75;
	TU.newTest.Cancel.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Cancel.Size.Y/2))+30;
	TU.newTest.Confirm.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Confirm.Size.X/2))+75;
	TU.newTest.Confirm.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Confirm.Size.Y/2))+30;
	TU.newTest.Details.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Details.Size.X/2));
	TU.newTest.Details.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Details.Size.Y/2))-20;
	TU.newTest.Question.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Question.Size.X/2));
	TU.newTest.Question.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Question.Size.Y/2))-50;
	TU.newTest.Answer.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Answer.Size.X/2));
	TU.newTest.Answer.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Answer.Size.Y/2));
	TU.newTest.Finish.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Finish.Size.X/2))-100;
	TU.newTest.Finish.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Finish.Size.Y/2))+35;
	TU.newTest.Next.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Next.Size.X/2))+100;
	TU.newTest.Next.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Next.Size.Y/2))+35;
	TU.newTest.Warning.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Warning.Size.X/2));
	TU.newTest.Warning.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Warning.Size.Y/2))+75;
end


return TU;
