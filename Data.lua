Data = {};
Data.Tests = {};
love.filesystem.setIdentity("NewTest")

function Data.saveTests()
	jsar = require("json").encode(Data.Tests);
	if love.filesystem.exists("Test.lua") then
		love.filesystem.write("Test.lua",jsar);
	else
		file = love.filesystem.newFile("Tests.lua");
		love.filesystem.write("Test.lua",jsar);
	end
end

function Data.loadTests()
	if love.filesystem.exists("Test.lua") then
		return tostring(love.filesystem.read("Test.lua"));
	else
		return "[]";
	end
end

return Data;