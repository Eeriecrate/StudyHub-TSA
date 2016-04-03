Mouse = {}
Mouse.X = 0;
Mouse.Y = 0;
Mouse.Available = {};
Mouse.Selected = nil;

function Mouse.updateProperties()
	Mouse.X = love.mouse.getX();
	Mouse.Y = love.mouse.getY();
end

function Mouse.isHoveringOver(X,Y,v)
	if v.Visible and v.Parent.Visible and (X >= v.Position.X and X <= (v.Position.X+(v.Size.X*v.Scale.X)) and Y >= v.Position.Y and Y <= (v.Position.Y+(v.Size.Y*v.Scale.Y))) then
		return true;
	else
		return false;
	end
end

function Mouse.isClicking(X,Y,v)
	if v.Visible and v.Parent.Visible and (X >= v.Position.X and X <= (v.Position.X+(v.Size.X*v.Scale.X)) and Y >= v.Position.Y and Y <= (v.Position.Y+(v.Size.Y*v.Scale.Y))) then
		Mouse.Selected = nil;
		v.Clicked();
	end
end

return Mouse;