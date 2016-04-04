function love.load()
	Toolbar = require("Toolbar");
	Options = require("Options");
	Mouse = require("MouseFunctions");
	JSON = require("json");
	utf8 = require("utf8")
	TestUI = require("TestUI");
	love.graphics.setDefaultFilter("nearest", "nearest")
	Data = require("Data");
	Tests = JSON.decode(Data.loadTests());
	if #Tests ~= 0 then
		for i,v in pairs(Tests) do
			table.insert(require("Data").Tests,v);
		end
	end
end


function love.update()
	love.window.setTitle( "TestHub: "..love.timer.getFPS( ).." FPS")
	Toolbar.updatePositions();
	TestUI.updatePositions();
	Mouse.updateProperties();
end

function love.mousepressed()
	for i,v in pairs(Mouse.Available) do
		Mouse.isClicking(love.mouse.getX(),love.mouse.getY(),v)
	end
end

function love.draw()
	love.graphics.setColor( 255,255,255,255 )
	love.graphics.setBackgroundColor(255,255,255);
	love.graphics.draw(Toolbar.Header,0,0,0,love.graphics.getWidth()/6,5);
	love.graphics.draw(Toolbar.Footer,0,love.graphics.getHeight()-30,0,love.graphics.getWidth()/6,5);
	love.graphics.setColor( 255,255,255,255/2 )
	if (Mouse.X >= Toolbar.Resize.Position.X and Mouse.X <= (Toolbar.Resize.Position.X+(Toolbar.Resize.Size.X*Toolbar.Resize.Scale.X)) and Mouse.Y >= Toolbar.Resize.Position.Y and Mouse.Y <= (Toolbar.Resize.Position.Y+(Toolbar.Resize.Size.Y*Toolbar.Resize.Scale.Y))) then
		love.graphics.setColor( 255,255,255,255 )
	end
	love.graphics.draw(Toolbar.Resize.image,Toolbar.Resize.Position.X,Toolbar.Resize.Position.Y,0,Toolbar.Resize.Scale.X,Toolbar.Resize.Scale.Y);
	love.graphics.setColor( 159,82,31,255 )
	for i,v in pairs(Toolbar.Tools) do
		love.graphics.setColor( 0,0,0,225)
		love.graphics.print(v.Text, ((v.Position.X+(v.Size.X/2))-love.graphics.getFont():getWidth(v.Text)/2), v.Position.Y+(v.Size.Y/2)-6)
		if Mouse.isHoveringOver(Mouse.X,Mouse.Y,v) then
			love.graphics.setColor( 159,82,31,255/2 )
		else
			love.graphics.setColor( 159,82,31,255/4 )
		end
		love.graphics.rectangle("fill",v.Position.X,v.Position.Y,v.Size.X,v.Size.Y);
		--[[Everything below here is beyond the basic layout.]]--
		if TestUI.newTest.Visible then
			love.graphics.setColor( 255/1.5,127/1.5,39/1.5,225);
			love.graphics.rectangle("fill",TestUI.newTest.Title.Position.X,TestUI.newTest.Title.Position.Y+2,TestUI.newTest.Title.Size.X,TestUI.newTest.Title.Size.Y);
			love.graphics.setColor( 255,127,39,225);
			love.graphics.rectangle("fill",TestUI.newTest.Title.Position.X,TestUI.newTest.Title.Position.Y,TestUI.newTest.Title.Size.X,TestUI.newTest.Title.Size.Y);
			love.graphics.setColor( 159,82,31,255/2 )
			love.graphics.rectangle("fill",TestUI.newTest.Title.Position.X,TestUI.newTest.Title.Position.Y+20,TestUI.newTest.Title.Size.X,2);
			love.graphics.setColor( 159,82,31,255/4 )
			love.graphics.rectangle("fill",TestUI.newTest.Title.Position.X,TestUI.newTest.Title.Position.Y,TestUI.newTest.Title.Size.X,20);
			love.graphics.setColor( 159,82,31,255/4 )
			love.graphics.rectangle("fill",TestUI.newTest.TitleInput.Position.X,TestUI.newTest.TitleInput.Position.Y,TestUI.newTest.TitleInput.Size.X,TestUI.newTest.TitleInput.Size.Y);
			love.graphics.setColor( 0,0,0,225)
			love.graphics.print(TestUI.newTest.TitleInput.Text, ((TestUI.newTest.TitleInput.Position.X+(TestUI.newTest.TitleInput.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.TitleInput.Text)/2), TestUI.newTest.TitleInput.Position.Y+4);
			love.graphics.setColor( 0,0,0,225);
			love.graphics.print("Pick a name for the test.", ((TestUI.newTest.Title.Position.X+(TestUI.newTest.Title.Size.X/2))-love.graphics.getFont():getWidth("Pick a name for the test.")/2), TestUI.newTest.Title.Position.Y+5);
			if Mouse.isHoveringOver(Mouse.X,Mouse.Y,TestUI.newTest.Confirm) then
				love.graphics.setColor( 159,82,31,255/2 )
			else
				love.graphics.setColor( 159,82,31,255/4 )
			end
			love.graphics.rectangle("fill",TestUI.newTest.Confirm.Position.X,TestUI.newTest.Confirm.Position.Y,TestUI.newTest.Confirm.Size.X,TestUI.newTest.Confirm.Size.Y);
			love.graphics.setColor( 0,0,0,225)
			love.graphics.print(TestUI.newTest.Confirm.Text, ((TestUI.newTest.Confirm.Position.X+(TestUI.newTest.Confirm.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.Confirm.Text)/2), TestUI.newTest.Confirm.Position.Y+4);
			if Mouse.isHoveringOver(Mouse.X,Mouse.Y,TestUI.newTest.Cancel) then
				love.graphics.setColor( 159,82,31,255/2 )
			else
				love.graphics.setColor( 159,82,31,255/4 )
			end
			love.graphics.rectangle("fill",TestUI.newTest.Cancel.Position.X,TestUI.newTest.Cancel.Position.Y,TestUI.newTest.Cancel.Size.X,TestUI.newTest.Cancel.Size.Y);
			love.graphics.setColor( 0,0,0,225)
			love.graphics.print(TestUI.newTest.Cancel.Text, ((TestUI.newTest.Cancel.Position.X+(TestUI.newTest.Cancel.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.Cancel.Text)/2), TestUI.newTest.Cancel.Position.Y+4);
		elseif TestUI.newTest.Details.Visible then
			love.graphics.setColor( 255/3,127/3,39/3,225);
			love.graphics.rectangle("fill",TestUI.newTest.Details.Position.X-2,TestUI.newTest.Details.Position.Y,TestUI.newTest.Details.Size.X+4,TestUI.newTest.Details.Size.Y+4);
			love.graphics.setColor( 255,127,39,225);
			love.graphics.rectangle("fill",TestUI.newTest.Details.Position.X,TestUI.newTest.Details.Position.Y+2,TestUI.newTest.Details.Size.X,TestUI.newTest.Details.Size.Y);
			love.graphics.setColor( 255/3,127/3,39/3,225);
			love.graphics.rectangle("fill",TestUI.newTest.Question.Position.X-2,TestUI.newTest.Question.Position.Y,TestUI.newTest.Question.Size.X+4,TestUI.newTest.Question.Size.Y+4);
			love.graphics.setColor( 159,82,31,255/4 )
			love.graphics.rectangle("fill",TestUI.newTest.Question.Position.X,TestUI.newTest.Question.Position.Y,TestUI.newTest.Question.Size.X,TestUI.newTest.Question.Size.Y);
			love.graphics.setColor( 159,82,31,255 )
			love.graphics.rectangle("fill",TestUI.newTest.Question.Position.X,TestUI.newTest.Question.Position.Y-20,TestUI.newTest.Question.Size.X,TestUI.newTest.Question.Size.Y);
			love.graphics.setColor( 255,255,255,225)
			love.graphics.print(TestUI.newTest.Question.Text, ((TestUI.newTest.Question.Position.X+(TestUI.newTest.Question.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.Question.Text)/2), TestUI.newTest.Question.Position.Y+4);
			love.graphics.setColor( 255,255,255,225)
			love.graphics.print("Question", ((TestUI.newTest.Question.Position.X+(TestUI.newTest.Question.Size.X/2))-love.graphics.getFont():getWidth("Question")/2), TestUI.newTest.Question.Position.Y-17);

			love.graphics.setColor( 255/3,127/3,39/3,225);
			love.graphics.rectangle("fill",TestUI.newTest.Answer.Position.X-2,TestUI.newTest.Answer.Position.Y,TestUI.newTest.Answer.Size.X+4,TestUI.newTest.Answer.Size.Y+4);
			love.graphics.setColor( 159,82,31,255/4 )
			love.graphics.rectangle("fill",TestUI.newTest.Answer.Position.X,TestUI.newTest.Answer.Position.Y,TestUI.newTest.Answer.Size.X,TestUI.newTest.Answer.Size.Y);
			love.graphics.setColor( 159,82,31,255 )
			love.graphics.rectangle("fill",TestUI.newTest.Answer.Position.X,TestUI.newTest.Answer.Position.Y-20,TestUI.newTest.Answer.Size.X,TestUI.newTest.Answer.Size.Y);
			love.graphics.setColor( 255,255,255,225)
			love.graphics.print(TestUI.newTest.Answer.Text, ((TestUI.newTest.Answer.Position.X+(TestUI.newTest.Answer.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.Answer.Text)/2), TestUI.newTest.Answer.Position.Y+4);
			love.graphics.setColor( 255,255,255,225)
			love.graphics.print("Answer", ((TestUI.newTest.Answer.Position.X+(TestUI.newTest.Answer.Size.X/2))-love.graphics.getFont():getWidth("Answer")/2), TestUI.newTest.Answer.Position.Y-17);			

			if Mouse.isHoveringOver(Mouse.X,Mouse.Y,TestUI.newTest.Next) then
				love.graphics.setColor( 159,82,31,255/2 )
			else
				love.graphics.setColor( 159,82,31,255/4 )
			end
			love.graphics.rectangle("fill",TestUI.newTest.Next.Position.X,TestUI.newTest.Next.Position.Y,TestUI.newTest.Next.Size.X,TestUI.newTest.Next.Size.Y);
			love.graphics.setColor( 255,255,255,225)
			love.graphics.print(TestUI.newTest.Next.Text, ((TestUI.newTest.Next.Position.X+(TestUI.newTest.Next.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.Next.Text)/2), TestUI.newTest.Next.Position.Y+4);

			if Mouse.isHoveringOver(Mouse.X,Mouse.Y,TestUI.newTest.Finish) then
				love.graphics.setColor( 159,82,31,255/2 )
			else
				love.graphics.setColor( 159,82,31,255/4 )
			end
			love.graphics.rectangle("fill",TestUI.newTest.Finish.Position.X,TestUI.newTest.Finish.Position.Y,TestUI.newTest.Finish.Size.X,TestUI.newTest.Finish.Size.Y);
			love.graphics.setColor( 255,255,255,225)
			love.graphics.print(TestUI.newTest.Finish.Text, ((TestUI.newTest.Finish.Position.X+(TestUI.newTest.Finish.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.Finish.Text)/2), TestUI.newTest.Finish.Position.Y+4);
			if TestUI.newTest.Warning.Counter ~= 0 then
				TestUI.newTest.Warning.Counter = TestUI.newTest.Warning.Counter - 1;
				love.graphics.setColor( 255,0,0,255);
				love.graphics.rectangle("fill",TestUI.newTest.Warning.Position.X,TestUI.newTest.Warning.Position.Y,TestUI.newTest.Warning.Size.X,TestUI.newTest.Warning.Size.Y);
				love.graphics.setColor( 255,255,255,225)
				love.graphics.print(TestUI.newTest.Warning.Text, ((TestUI.newTest.Warning.Position.X+(TestUI.newTest.Warning.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.Warning.Text)/2), TestUI.newTest.Warning.Position.Y+4);
			end
		end
	end
end

function love.textinput(t)
	if Mouse.Selected ~= nil then
		Mouse.Selected.Text = Mouse.Selected.Text..t;
	end
end

function love.keypressed(key)
    if key == "backspace" and Mouse.Selected ~= nil then
        local byteoffset = utf8.offset(Mouse.Selected.Text, -1)
        if byteoffset then
            Mouse.Selected.Text = string.sub(Mouse.Selected.Text, 1, byteoffset - 1)
        end
    elseif key == "return" then
    	Mouse.Selected = nil;
    end
end