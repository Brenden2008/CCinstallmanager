startup = io.open ("startup.lua", "w")
prog = io.open ("ccim/prog.lua", "w")

io.output(startup)
io.write("print('[INFO]: FreeInstallManager has been activated for this session.')print('Now launching startup.lua')startup=io.open('startup2.lua','w')local a,b=load(startup,'startup2.lua',nil,_ENV)if not a then _G.printError(b)else local c={...}a(c[1])end")
io.close(startup)
