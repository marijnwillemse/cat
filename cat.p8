pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
function _init()
 p=cat:new()
end

function _update()
 p:update()
end

function _draw()
 cls()
 spr(1,p.x*8,p.y*8)
end
-->8
entity = {x=1, y=1}

function entity:new(o)
 o=o or {} --create if null
 setmetatable(o, self)
 self.__index=self
 return o
end

cat=entity:new()

function cat:update()
 if btnp(⬆️) then self.y-=1 end
 if btnp(⬇️) then self.y+=1 end
 if btnp(⬅️) then self.x-=1 end
 if btnp(➡️) then self.x+=1 end
end

__gfx__
00000000888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088808080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700808870780000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000800800080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000800000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700800000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000800000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000808808080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
