# A simulation of craps.
# Not particularly interesting, but was useful to learn R.
# Probably inelegant, but no need to spiffy up.

sims = rep(0, 1000)
for (j in 1:1000) {		# Simulate 1,000 "tables" of craps ...

craps = rep(0, 10)
for (i in 1:10){       # ... each table playing 10 games.
game = 0
d = sample(1:6, 2, replace = T)
print(d)				# Come out throw.
if (sum(d) == 7 | sum(d) == 11) game = 1 else		# Is game won ...
{ if (sum(d) == 2 | sum(d) == 3 | sum(d) == 12)     # ... or lost on come out?
	game = 0 else {
point = sum(d)
r = sample(1:6, 2, replace = T)		# Subsequent throws, if required ...
print(r)
while (sum(r) != point & sum(r) != 7) {    # ... until game is won or lost.
r = sample(1:6, 2, replace = T)
print(r)
}
if (sum(r) == point) game = 1 else game = 0			# Is game won or lost?
}}
if (game == 1) print('win') else print('lost')		# Print outcome.

craps[i]= game
}
sims[j]=sum(craps)/10
}
hist(sims, breaks = 10)		# Plot distribution of percentage wins in 1,000 tables.
abline(v = 0.5, lty = 2, lwd = 2, col = 'orange')		# Is craps stacked against players?
