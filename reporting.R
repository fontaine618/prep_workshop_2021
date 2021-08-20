# ==============================================================================
# saving plots
x = rnorm(100)
y = runif(100)
plot(x, y) # this will show up in the "Plots" panel

# start sinking plots to this file, specify options
pdf("plot.pdf", width = 8, height = 5)
# produce a plot
plot(x, y) # notice it doesn't show up in "Plots
abline(a=0.5, b=0)
title("Example plot")
# close the plot
dev.off()

# ==============================================================================
# LaTeX tables from data.frames
df = data.frame(
  x = seq(10), y=paste0("X", seq(10)), z=F
)
xtable::xtable(df)
