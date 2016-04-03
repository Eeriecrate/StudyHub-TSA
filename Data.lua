Data = {};
Data.Tests = {};


function Data.loadTests()
	if love.filesystem.exists("Tests.txt") then
		return love.filesystem.read("Tests.txt");
	else
		return "[]";
	end
end

return Data;