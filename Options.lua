Options = {};

Options.curSize = {};
Options.curSize.X = 800;
Options.curSize.Y = 600;
Options.Fullscreen = false;

function Options.toggleFullscreen()
	if Options.Fullscreen then
		love.window.setMode( Options.curSize.X, Options.curSize.Y, {resizable=true, vsync=false, fullscreen=false,minwidth=800,minheight=600})
		Options.Fullscreen = false;
	else
		Options.curSize.X = love.graphics.getWidth();
		Options.curSize.Y = love.graphics.getHeight();
		love.window.setMode( Options.curSize.X, Options.curSize.Y, {resizable=true, vsync=false, fullscreen=true, fullscreentype="desktop"})
		Options.Fullscreen = true;
	end
end

return Options