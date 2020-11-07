startup = io.open ("startup.lua", "w")
prog = io.open ("ccim/prog.lua", "w")

io.output(startup)
io.write("
  print('[INFO]: FreeInstallManager has been activated for this session.')
print('Now launching startup.lua')
startup = io.open ('startup2.lua', 'w')
local fn, msg = load(startup, 'startup2.lua', nil, _ENV)
if not fn then
  _G.printError(msg)
else
  local args = { ... }
  fn(args[1])
end
  ")
io.close(startup)
