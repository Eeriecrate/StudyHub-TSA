--[[A mess of code that I imagine I could have done better using basic itteration and functions, but this won't create any
latency since it really only runs once. It's okay for it's purpose.]]--

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
	TU.localTest = {};
	TU.localTest.Questions = {};
	TU.localTest.Name = TU.newTest.TitleInput.Text;
	TU.newTest.TitleInput.Text = "Type title here";
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
		Question.Q = TU.newTest.Question.Text;
		Question.A = TU.newTest.Answer.Text;
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
		Question.Q = TU.newTest.Question.Text;
		Question.A = TU.newTest.Answer.Text;
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
		require("Data").saveTests()
	end
end

TU.newTest.Warning = {};
TU.newTest.Warning.Counter = 0;
TU.newTest.Warning.Visible = true;
TU.newTest.Warning.Parent = TU.newTest;
TU.newTest.Warning.Size = {};
TU.newTest.Warning.Size.X = 770;
TU.newTest.Warning.Size.Y = 20;
TU.newTest.Warning.Position = {};
TU.newTest.Warning.Position.X = ((love.graphics.getWidth()/2)-(TU.newTest.Warning.Size.X/2));
TU.newTest.Warning.Position.Y = ((love.graphics.getHeight()/2)-(TU.newTest.Warning.Size.Y/2));
TU.newTest.Warning.Text = "MINIMUM OF 4 QUESTIONS";

TU.Delete = {};
TU.Delete.Number = 1;
TU.Delete.Visible = false;
TU.Delete.Frame = {};
TU.Delete.Frame.Visible = true;
TU.Delete.Frame.Parent = TU.Delete;
TU.Delete.Frame.Size = {};
TU.Delete.Frame.Size.X = 200;
TU.Delete.Frame.Size.Y = 50;
TU.Delete.Frame.Scale = {};
TU.Delete.Frame.Scale.X = 1;
TU.Delete.Frame.Scale.Y = 1;
TU.Delete.Frame.Position = {};
TU.Delete.Frame.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Frame.Size.X/2));
TU.Delete.Frame.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Frame.Size.Y/2));
TU.Delete.Title = {};
TU.Delete.Title.Visible = true;
TU.Delete.Title.Parent = TU.Delete;
TU.Delete.Title.Size = {};
TU.Delete.Title.Size.X = 150;
TU.Delete.Title.Size.Y = 20;
TU.Delete.Title.Scale = {};
TU.Delete.Title.Scale.X = 1;
TU.Delete.Title.Scale.Y = 1;
TU.Delete.Title.Position = {};
TU.Delete.Title.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Title.Size.X/2));
TU.Delete.Title.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Title.Size.Y/2)-10);
TU.Delete.Next = {};
TU.Delete.Next.Visible = true;
TU.Delete.Next.Parent = TU.Delete;
TU.Delete.Next.Size = {};
TU.Delete.Next.Size.X = 20;
TU.Delete.Next.Size.Y = 20;
TU.Delete.Next.Scale = {};
TU.Delete.Next.Scale.X = 1;
TU.Delete.Next.Scale.Y = 1;
TU.Delete.Next.Position = {};
TU.Delete.Next.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Next.Size.X/2)+87);
TU.Delete.Next.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Next.Size.Y/2)-10);
TU.Delete.Next.Text = ">"
table.insert(require("MouseFunctions").Available,TU.Delete.Next);
function TU.Delete.Next.Clicked()
	if #(require("Data").Tests) > 1 then
		if TU.Delete.Number == #(require("Data").Tests) then
			TU.Delete.Number = 1;
		else
			TU.Delete.Number = TU.Delete.Number + 1;
		end
	end
end
TU.Delete.Previous = {};
TU.Delete.Previous.Visible = true;
TU.Delete.Previous.Parent = TU.Delete;
TU.Delete.Previous.Size = {};
TU.Delete.Previous.Size.X = 20;
TU.Delete.Previous.Size.Y = 20;
TU.Delete.Previous.Scale = {};
TU.Delete.Previous.Scale.X = 1;
TU.Delete.Previous.Scale.Y = 1;
TU.Delete.Previous.Position = {};
TU.Delete.Previous.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Previous.Size.X/2)-87);
TU.Delete.Previous.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Previous.Size.Y/2)-10);
TU.Delete.Previous.Text = "<"
table.insert(require("MouseFunctions").Available,TU.Delete.Previous);
function TU.Delete.Previous.Clicked()
	if #(require("Data").Tests) > 1 then
		if TU.Delete.Number == 1 then
			TU.Delete.Number = #(require("Data").Tests);
		else
			TU.Delete.Number = TU.Delete.Number - 1;
		end
	end
end
TU.Delete.Confirm = {};
TU.Delete.Confirm.Visible = true;
TU.Delete.Confirm.Parent = TU.Delete;
TU.Delete.Confirm.Size = {};
TU.Delete.Confirm.Size.X = 100;
TU.Delete.Confirm.Size.Y = 20;
TU.Delete.Confirm.Scale = {};
TU.Delete.Confirm.Scale.X = 1;
TU.Delete.Confirm.Scale.Y = 1;
TU.Delete.Confirm.Position = {};
TU.Delete.Confirm.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Confirm.Size.X/2));
TU.Delete.Confirm.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Confirm.Size.Y/2)+12.5);
TU.Delete.Confirm.Text = "Delete";
table.insert(require("MouseFunctions").Available,TU.Delete.Confirm);
function TU.Delete.Confirm.Clicked()
	if #(require("Data").Tests) >= 1 then
		table.remove(require("Data").Tests,TU.Delete.Number);
		require("Data").saveTests();
		if TU.Delete.Number == 1 then
			TU.Delete.Number = #(require("Data").Tests);
		else
			TU.Delete.Number = TU.Delete.Number - 1;
		end
		if TU.Delete.Number == 0 then
			TU.Delete.Number = 1;
		end
	end
end

TU.takeTest = {};
TU.takeTest.Number = 1;
TU.takeTest.Visible = false;
TU.takeTest.Frame = {};
TU.takeTest.Frame.Visible = true;
TU.takeTest.Frame.Parent = TU.takeTest;
TU.takeTest.Frame.Size = {};
TU.takeTest.Frame.Size.X = 200;
TU.takeTest.Frame.Size.Y = 50;
TU.takeTest.Frame.Scale = {};
TU.takeTest.Frame.Scale.X = 1;
TU.takeTest.Frame.Scale.Y = 1;
TU.takeTest.Frame.Position = {};
TU.takeTest.Frame.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Frame.Size.X/2));
TU.takeTest.Frame.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Frame.Size.Y/2));
TU.takeTest.Title = {};
TU.takeTest.Title.Visible = true;
TU.takeTest.Title.Parent = TU.takeTest;
TU.takeTest.Title.Size = {};
TU.takeTest.Title.Size.X = 150;
TU.takeTest.Title.Size.Y = 20;
TU.takeTest.Title.Scale = {};
TU.takeTest.Title.Scale.X = 1;
TU.takeTest.Title.Scale.Y = 1;
TU.takeTest.Title.Position = {};
TU.takeTest.Title.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Title.Size.X/2));
TU.takeTest.Title.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Title.Size.Y/2)-10);
TU.takeTest.Next = {};
TU.takeTest.Next.Visible = true;
TU.takeTest.Next.Parent = TU.takeTest;
TU.takeTest.Next.Size = {};
TU.takeTest.Next.Size.X = 20;
TU.takeTest.Next.Size.Y = 20;
TU.takeTest.Next.Scale = {};
TU.takeTest.Next.Scale.X = 1;
TU.takeTest.Next.Scale.Y = 1;
TU.takeTest.Next.Position = {};
TU.takeTest.Next.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Next.Size.X/2)+87);
TU.takeTest.Next.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Next.Size.Y/2)-10);
TU.takeTest.Next.Text = ">"
table.insert(require("MouseFunctions").Available,TU.takeTest.Next);
function TU.takeTest.Next.Clicked()
	if #(require("Data").Tests) > 1 then
		if TU.takeTest.Number == #(require("Data").Tests) then
			TU.takeTest.Number = 1;
		else
			TU.takeTest.Number = TU.takeTest.Number + 1;
		end
	end
end
TU.takeTest.Previous = {};
TU.takeTest.Previous.Visible = true;
TU.takeTest.Previous.Parent = TU.takeTest;
TU.takeTest.Previous.Size = {};
TU.takeTest.Previous.Size.X = 20;
TU.takeTest.Previous.Size.Y = 20;
TU.takeTest.Previous.Scale = {};
TU.takeTest.Previous.Scale.X = 1;
TU.takeTest.Previous.Scale.Y = 1;
TU.takeTest.Previous.Position = {};
TU.takeTest.Previous.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Previous.Size.X/2)-87);
TU.takeTest.Previous.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Previous.Size.Y/2)-10);
TU.takeTest.Previous.Text = "<"
table.insert(require("MouseFunctions").Available,TU.takeTest.Previous);
function TU.takeTest.Previous.Clicked()
	if #(require("Data").Tests) > 1 then
		if TU.takeTest.Number == 1 then
			TU.takeTest.Number = #(require("Data").Tests);
		else
			TU.takeTest.Number = TU.takeTest.Number - 1;
		end
	end
end
TU.takeTest.Confirm = {};
TU.takeTest.Confirm.Visible = true;
TU.takeTest.Confirm.Parent = TU.takeTest;
TU.takeTest.Confirm.Size = {};
TU.takeTest.Confirm.Size.X = 100;
TU.takeTest.Confirm.Size.Y = 20;
TU.takeTest.Confirm.Scale = {};
TU.takeTest.Confirm.Scale.X = 1;
TU.takeTest.Confirm.Scale.Y = 1;
TU.takeTest.Confirm.Position = {};
TU.takeTest.Confirm.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Confirm.Size.X/2));
TU.takeTest.Confirm.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Confirm.Size.Y/2)+12.5);
TU.takeTest.Confirm.Text = "Take";
table.insert(require("MouseFunctions").Available,TU.takeTest.Confirm);
function TU.takeTest.Confirm.Clicked()
	TU.Test.Number = TU.takeTest.Number;
	TU.takeTest.Visible = false;
	TU.resetAvailable(TU.takeTest.Number);
	TU.setQuestion();
	TU.generateAnswers();
	TU.Test.Visible = true;
end

TU.Test = {};
TU.Test.Counter = 0;
TU.Test.Visible = true;
TU.Test.Number = 1;
TU.Test.Visible = false;
TU.Test.Frame = {};
TU.Test.Frame.Visible = true;
TU.Test.Frame.Parent = TU.Test;
TU.Test.Frame.Size = {};
TU.Test.Frame.Size.X = 760;
TU.Test.Frame.Size.Y = 500;
TU.Test.Frame.Scale = {};
TU.Test.Frame.Scale.X = 1;
TU.Test.Frame.Scale.Y = 1;
TU.Test.Frame.Position = {};
TU.Test.Frame.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.Frame.Size.X/2));
TU.Test.Frame.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.Frame.Size.Y/2));
TU.Test.Question = {};
TU.Test.A = {};
TU.Test.A.Visible = true;
TU.Test.A.Parent = TU.Test;
TU.Test.A.Size = {};
TU.Test.A.Size.X = 700;
TU.Test.A.Size.Y = 20;
TU.Test.A.Scale = {};
TU.Test.A.Scale.X = 1;
TU.Test.A.Scale.Y = 1;
TU.Test.A.Position = {};
TU.Test.A.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.A.Size.X/2));
TU.Test.A.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.A.Size.Y/2))+50;
TU.Test.A.Text = "";
table.insert(require("MouseFunctions").Available,TU.Test.A);
function TU.Test.A.Clicked()
	TU.checkAnswer(TU.Test.A.Text);
end
TU.Test.B = {};
TU.Test.B.Visible = true;
TU.Test.B.Parent = TU.Test;
TU.Test.B.Size = {};
TU.Test.B.Size.X = 700;
TU.Test.B.Size.Y = 20;
TU.Test.B.Scale = {};
TU.Test.B.Scale.X = 1;
TU.Test.B.Scale.Y = 1;
TU.Test.B.Position = {};
TU.Test.B.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.B.Size.X/2));
TU.Test.B.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.B.Size.Y/2))+80;
TU.Test.B.Text = "";
table.insert(require("MouseFunctions").Available,TU.Test.B);
function TU.Test.B.Clicked()
	TU.checkAnswer(TU.Test.B.Text);
end
TU.Test.C = {};
TU.Test.C.Visible = true;
TU.Test.C.Parent = TU.Test;
TU.Test.C.Size = {};
TU.Test.C.Size.X = 700;
TU.Test.C.Size.Y = 20;
TU.Test.C.Scale = {};
TU.Test.C.Scale.X = 1;
TU.Test.C.Scale.Y = 1;
TU.Test.C.Position = {};
TU.Test.C.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.C.Size.X/2));
TU.Test.C.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.C.Size.Y/2))+110;
TU.Test.C.Text = "";
table.insert(require("MouseFunctions").Available,TU.Test.C);
function TU.Test.C.Clicked()
	TU.checkAnswer(TU.Test.C.Text);
end
TU.Test.D = {};
TU.Test.D.Visible = true;
TU.Test.D.Parent = TU.Test;
TU.Test.D.Size = {};
TU.Test.D.Size.X = 700;
TU.Test.D.Size.Y = 20;
TU.Test.D.Scale = {};
TU.Test.D.Scale.X = 1;
TU.Test.D.Scale.Y = 1;
TU.Test.D.Position = {};
TU.Test.D.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.D.Size.X/2));
TU.Test.D.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.D.Size.Y/2))+140;
TU.Test.D.Text = "";
table.insert(require("MouseFunctions").Available,TU.Test.D);
function TU.Test.D.Clicked()
	TU.checkAnswer(TU.Test.D.Text);
end

TU.Test.Question = {};
TU.Test.Question.Visible = true;
TU.Test.Question.Parent = TU.Test;
TU.Test.Question.Size = {};
TU.Test.Question.Size.X = 700;
TU.Test.Question.Size.Y = 200;
TU.Test.Question.Scale = {};
TU.Test.Question.Scale.X = 1;
TU.Test.Question.Scale.Y = 1;
TU.Test.Question.Position = {};
TU.Test.Question.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.Question.Size.X/2));
TU.Test.Question.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.Question.Size.Y/2))-100;
TU.Test.Question.Text = "";


TU.Results = {};
TU.Results.Visible = false;
TU.Results.Frame = {};
TU.Results.Frame.Visible = true;
TU.Results.Frame.Parent = TU.Results;
TU.Results.Frame.Size = {};
TU.Results.Frame.Size.X = 300;
TU.Results.Frame.Size.Y = 20;
TU.Results.Frame.Scale = {};
TU.Results.Frame.Scale.X = 1;
TU.Results.Frame.Scale.Y = 1;
TU.Results.Frame.Position = {};
TU.Results.Frame.Position.X = ((love.graphics.getWidth()/2)-(TU.Results.Frame.Size.X/2));
TU.Results.Frame.Position.Y = ((love.graphics.getHeight()/2)-(TU.Results.Frame.Size.Y/2));
TU.Results.Frame.Text = "Test completed: (PERCENT) correct.";

TU.usedQuestions = {};
TU.availableQuestions = {};
TU.localAnswers = {};
TU.currentQuestion = nil;
TU.availableAnswers = {};
TU.correct = 0;
TU.incorrect = 0;
math.randomseed(os.time());
function TU.resetAvailable(test)
	print(test)
	TU.localTake = {};
	for i,v in pairs(require("Data").Tests[test].Questions) do
		table.insert(TU.localTake,v);
	end
	TU.availableQuestions = {};
	for i = 1,#TU.localTake,1 do
		local Number = math.random(1,#TU.localTake);
		table.insert(TU.availableQuestions,TU.localTake[Number]);
		table.remove(TU.localTake,Number);
	end
end

function TU.setQuestion()
	local newNumber = math.random(1,#TU.availableQuestions);
	table.insert(TU.usedQuestions,TU.availableQuestions[newNumber]);
	TU.currentQuestion = TU.availableQuestions[newNumber];
	TU.displayQuestion(TU.availableQuestions[newNumber].Q)
	table.remove(TU.availableQuestions,newNumber);
end

function TU.displayQuestion(question)
	TU.Test.Question.Text = question;
end

function TU.generateAnswers()
	TU.availableAnswers = {};
	TU.localAnswers = {};
	TU.notInUse = {};
	print("Current: "..TU.Test.Number)
	for i,v in pairs(require("Data").Tests[TU.Test.Number].Questions) do
		if v.A ~= TU.currentQuestion.A then
			table.insert(TU.notInUse,v);
		end
	end
	table.insert(TU.localAnswers,TU.currentQuestion.A);
	for i = 1,3,1 do
		local picked = nil;
		local Go = false;
		local Num = 0;
		repeat
		Num = math.random(1,#(TU.notInUse))
		picked = TU.notInUse[Num];
		until picked ~= nil
		table.remove(TU.notInUse,Num);
		table.insert(TU.localAnswers,picked.A);
	end
	for i = 1,#TU.localAnswers,1 do
		local Number = math.random(1,#TU.localAnswers);
		table.insert(TU.availableAnswers,TU.localAnswers[Number]);
		table.remove(TU.localAnswers,Number);
	end
	local List = {TU.Test.A,TU.Test.B,TU.Test.C,TU.Test.D};
	for i,v in pairs(List) do
		local Num = math.random(1,#TU.availableAnswers);
		v.Text = TU.availableAnswers[Num];
		table.remove(TU.availableAnswers,Num);
	end
end

function TU.checkAnswer(what)
	print(TU.Test.Counter)
	if TU.Test.Counter <= 0 then
		TU.Test.Counter = 60;
		if what == TU.currentQuestion.A then
			TU.correct = TU.correct + 1;
		else
			TU.incorrect = TU.incorrect + 1;
		end
		if #TU.availableQuestions == 0 then
			TU.Test.Visible = false;
			TU.Results.Visible = true;
			TU.Results.Frame.Text = "Test completed: "..((TU.correct/(TU.correct+TU.incorrect))*100).."%";
		else
		TU.setQuestion();
		TU.generateAnswers();
		end
	end
end



--[[Not sure why I only made this for one peice of the code, I had a different method in mind at this point.]]--
--[[It would be nice to consider converting this to my newer method using a parent property]]--
function TU.newTest.toggleVisiblity()
	--[[I used the operator should probably save it from having to use logic.]]--
	TU.newTest.Visible = not TU.newTest.Visible;
	TU.newTest.Title.Visible = TU.newTest.Visible;
	TU.newTest.TitleInput.Visible = TU.newTest.Visible;
	TU.newTest.Confirm.Visible = TU.newTest.Visible;
	TU.newTest.Cancel.Visible = TU.newTest.Visible;
end

--[[This is such a terrible way to do this, but I'm in a rush to get this done after completely redoing it.]]--
--[[Consider redoing this part?]]--
--[[Iteration could be good if I had a "static" variable? I don't think iteration would make anything other than concise, though.]]--
--[[That would also add more variables for the script to consider as well if I did it that way, though. Perhaps that's not a good idea? This may just be the best way.]]--
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
	TU.Delete.Frame.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Frame.Size.X/2));
	TU.Delete.Frame.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Frame.Size.Y/2));
	TU.Delete.Title.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Title.Size.X/2));
	TU.Delete.Title.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Title.Size.Y/2)-10);
	TU.Delete.Next.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Next.Size.X/2)+87);
	TU.Delete.Next.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Next.Size.Y/2)-10);
	TU.Delete.Previous.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Previous.Size.X/2)-87);
	TU.Delete.Previous.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Previous.Size.Y/2)-10);
	TU.Delete.Confirm.Position.X = ((love.graphics.getWidth()/2)-(TU.Delete.Confirm.Size.X/2));
	TU.Delete.Confirm.Position.Y = ((love.graphics.getHeight()/2)-(TU.Delete.Confirm.Size.Y/2)+12.5);
	TU.takeTest.Frame.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Frame.Size.X/2));
	TU.takeTest.Frame.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Frame.Size.Y/2));
	TU.takeTest.Title.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Title.Size.X/2));
	TU.takeTest.Title.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Title.Size.Y/2)-10);
	TU.takeTest.Next.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Next.Size.X/2)+87);
	TU.takeTest.Next.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Next.Size.Y/2)-10);
	TU.takeTest.Previous.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Previous.Size.X/2)-87);
	TU.takeTest.Previous.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Previous.Size.Y/2)-10);
	TU.takeTest.Confirm.Position.X = ((love.graphics.getWidth()/2)-(TU.takeTest.Confirm.Size.X/2));
	TU.takeTest.Confirm.Position.Y = ((love.graphics.getHeight()/2)-(TU.takeTest.Confirm.Size.Y/2)+12.5);
	TU.Test.Frame.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.Frame.Size.X/2));
	TU.Test.Frame.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.Frame.Size.Y/2));
	TU.Test.Question.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.Question.Size.X/2));
	TU.Test.Question.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.Question.Size.Y/2))-100;
	TU.Test.Frame.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.Frame.Size.X/2));
	TU.Test.Frame.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.Frame.Size.Y/2));
	TU.Test.A.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.A.Size.X/2));
	TU.Test.A.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.A.Size.Y/2))+50;
	TU.Test.B.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.B.Size.X/2));
	TU.Test.B.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.B.Size.Y/2))+80;
	TU.Test.C.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.C.Size.X/2));
	TU.Test.C.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.C.Size.Y/2))+110;
	TU.Test.D.Position.X = ((love.graphics.getWidth()/2)-(TU.Test.D.Size.X/2));
	TU.Test.D.Position.Y = ((love.graphics.getHeight()/2)-(TU.Test.D.Size.Y/2))+140;
end


return TU;
