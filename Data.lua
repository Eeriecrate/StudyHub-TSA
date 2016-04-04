Data = {};
Data.Tests = {};
love.filesystem.setIdentity("Data")

function Data.saveTests()
	jsar = require("json").encode(Data.Tests);
	if love.filesystem.exists("Tests.txt") then
		love.filesystem.write("Tests.txt",jsar);
	else
		file = love.filesystem.newFile("Tests.txt");
		love.filesystem.write("Tests.txt",jsar);
	end
end

function Data.loadTests()
	if love.filesystem.exists("Tests.txt") then
		return tostring(love.filesystem.read("Tests.txt"));
	else
		return "[]";
	end
end

return Data;