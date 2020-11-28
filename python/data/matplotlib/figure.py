import matplotlib.pyplot as PLT



# https://stackoverflow.com/questions/1358977/how-to-make-several-plots-on-a-single-page-using-matplotlib
fig = PLT.figure()
ax1 = fig.add_subplot(211)
ax1.plot([(1, 2), (3, 4)], [(4, 3), (2, 3)])
ax2 = fig.add_subplot(212)
ax2.plot([(7, 2), (5, 3)], [(1, 6), (9, 5)])


# https://stackoverflow.com/questions/35992492/python-savefig-cuts-off-title>
name = "TTT"
time = "ttt"
PLT.suptitle("Scatterplot "+str(name)+" , "+r'$\Delta$'+"Output , Zeit= "+str(time)+" s",fontsize=20)


PLT.show()


# https://stackoverflow.com/questions/13714454/specifying-and-saving-a-figure-with-exact-size-in-pixels
my_dpi=96
PLT.figure(figsize=(800/my_dpi, 800/my_dpi), dpi=my_dpi)
# PLT.savefig('temp_test.png', dpi=my_dpi)
PLT.savefig('temp_test.png', dpi=my_dpi * 10)
