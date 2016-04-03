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
end

function love.update()
	love.window.setTitle( "StudyHub: "..love.timer.getFPS( ).." FPS");
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
		love.graphics.setColor( 159,82,31,225)
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
			love.graphics.setColor( 159,82,31,225)
			love.graphics.print(TestUI.newTest.TitleInput.Text, ((TestUI.newTest.TitleInput.Position.X+(TestUI.newTest.TitleInput.Size.X/2))-love.graphics.getFont():getWidth(TestUI.newTest.TitleInput.Text)/2), TestUI.newTest.TitleInput.Position.Y+4);
			love.graphics.setColor( 159,82,31,225);
			love.graphics.print("Pick a name for the test.", ((TestUI.newTest.Title.Position.X+(TestUI.newTest.Title.Size.X/2))-love.graphics.getFont():getWidth("Pick a name for the test.")/2), TestUI.newTest.Title.Position.Y+5);
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