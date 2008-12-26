--------------------------------------------------------------------------------
---------------------- ##       #####    #####   ######  -----------------------
---------------------- ##      ##   ##  ##   ##  ##   ## -----------------------
---------------------- ##      ##   ##  ##   ##  ######  -----------------------
---------------------- ##      ##   ##  ##   ##  ##      -----------------------
---------------------- ######   #####    #####   ##      -----------------------
----------------------                                   -----------------------
----------------------- Lua Object-Oriented Programming ------------------------
--------------------------------------------------------------------------------
-- Project: LOOP - Lua Object-Oriented Programming                            --
-- Release: 2.3 beta                                                          --
-- Title  : Static Class Model witout Support for Introspection               --
-- Author : Renato Maia <maia@inf.puc-rio.br>                                 --
--------------------------------------------------------------------------------
-- Exported API:                                                              --
--   class(class)                                                             --
--   new(class, ...)                                                          --
--   share(object [, level])                                                  --
--   this([level])                                                            --
--------------------------------------------------------------------------------

local _G = require "_G"

local getfenv = _G.getfenv
local setfenv = _G.setfenv

module "loop.static"
--------------------------------------------------------------------------------
function class(class)
	return function(...)
		setfenv(class, {})
		class(...)
		local object = getfenv(class)
		setfenv(class, _G)
		return object
	end
end
--------------------------------------------------------------------------------
function new(class, ...)
	return class(...)
end
--------------------------------------------------------------------------------
function share(obj, level)
	setfenv((level or 1) + 1, obj)
end
--------------------------------------------------------------------------------
function this(level)
	return getfenv((level or 1) + 1)
end