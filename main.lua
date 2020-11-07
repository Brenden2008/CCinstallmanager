startup = io.open ("startup.lua", "w")

io.output(startup)
io.write("print('test')")
io.close(startup)
