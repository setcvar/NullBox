local main = {}
local vec2 = {__type = "vec2"}

function vec2.new (x,y)
    local self = {}
    self.x = x or 0
    self.y = x or 0
    self.udim = UDim2.fromOffset(self.x,self.y)
    return self
end

local hi = vec2.new(1,1)

function main:createtable (size: number)
    local index = #main+1
    main[index] = table.create(size)
    return index,main[index]
end

function main:create (class: any)
    local index = #main+1
    main[index] = Instance.new (class)
    return index,main[index]
end

function main:set (index: number,subindex: number|string, value: any)
    local index = index or #main+1
    main[index][subindex] = value
    return index,main[index]
end

local Gui = main:create("ScreenGui")
local Frame = main:create("Frame")

main:set(Gui,"Parent", game.CoreGui)
main:set(Gui,"Size", vec2.new(1,1).udim)
main:set(Gui,"Position", vec2.new(100,200).udim)