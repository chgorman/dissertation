# Plot Data
using PyPlot


#=
#Matrix A1 &
2.278 & 2.274 & 0.141 & 2.276 & 0.100 & 2.277 & 0.071 & 2.278 & 0.050 \\
#Matrix A2 &
1.040 & 1.013 & 0.236 & 1.026 & 0.169 & 1.033 & 0.121 & 1.037 & 0.085 \\
#Matrix E1 &
1.386 & 1.104 & 0.202 & 1.380 & 0.144 & 1.382 & 0.103 & 1.384 & 0.072 \\
#Matrix E2 &
1.124 & 1.104 & 0.224 & 1.114 & 0.158 & 1.121 & 0.113 & 1.122 & 0.080 \\
#Matrix S &
4.905 & 4.903 & 0.243 & 4.905 & 0.171 & 4.906 & 0.120 & 4.906 & 0.086 \\
#Matrix D &
3.178 & 3.169 & 0.350 & 3.174 & 0.174 & 3.177 & 0.123 & 3.178 & 0.088 \\
=#

mat_A1_mean = [2.274, 2.276, 2.277, 2.278]
mat_A1_true = [2.278, 2.278, 2.278, 2.278]
mat_A1_std  = [0.141, 0.100, 0.071, 0.050]
#mat_A1_upper_err = mat_A1_mean + mat_A1_std
#mat_A1_lower_err = mat_A1_mean - mat_A1_std
#mat_A1_upper_err = reshape(mat_A1_upper_err,(1,length(mat_A1_upper_err)))
#mat_A1_lower_err = reshape(mat_A1_lower_err,(1,length(mat_A1_lower_err)))
mat_A1_std = reshape(mat_A1_std,(1,length(mat_A1_std)))
#mat_A1_error = [mat_A1_lower_err; mat_A1_upper_err]
mat_A1_error = [mat_A1_std; mat_A1_std]

mat_A2_mean = [1.013, 1.026, 1.033, 1.037]
mat_A2_true = [1.040, 1.040, 1.040, 1.040]
mat_A2_std  = [0.236, 0.169, 0.121, 0.085]
mat_A2_upper_err = mat_A2_mean + mat_A2_std
mat_A2_lower_err = mat_A2_mean - mat_A2_std
mat_A2_upper_err = reshape(mat_A2_upper_err,(1,length(mat_A2_upper_err)))
mat_A2_lower_err = reshape(mat_A2_lower_err,(1,length(mat_A2_lower_err)))
mat_A2_error = [mat_A2_lower_err; mat_A2_upper_err]

mat_E1_mean = [1.104, 1.380, 1.382, 1.384]
mat_E1_true = [1.386, 1.386, 1.386, 1.386]
mat_E1_std  = [0.202, 0.144, 0.103, 0.072]
mat_E1_upper_err = mat_E1_mean + mat_E1_std
mat_E1_lower_err = mat_E1_mean - mat_E1_std
mat_E1_upper_err = reshape(mat_E1_upper_err,(1,length(mat_E1_upper_err)))
mat_E1_lower_err = reshape(mat_E1_lower_err,(1,length(mat_E1_lower_err)))
mat_E1_error = [mat_E1_lower_err; mat_E1_upper_err]

mat_E2_mean = [1.104, 1.114, 1.121, 1.122]
mat_E2_true = [1.124, 1.124, 1.124, 1.124]
mat_E2_std  = [0.224, 0.158, 0.113, 0.080]
mat_E2_upper_err = mat_E2_mean + mat_E2_std
mat_E2_lower_err = mat_E2_mean - mat_E2_std
mat_E2_upper_err = reshape(mat_E2_upper_err,(1,length(mat_E2_upper_err)))
mat_E2_lower_err = reshape(mat_E2_lower_err,(1,length(mat_E2_lower_err)))
mat_E2_error = [mat_E2_lower_err; mat_E2_upper_err]

mat_S_mean  = [4.903, 4.905, 4.906, 4.906]
mat_S_true  = [4.905, 4.905, 4.905, 4.905]
mat_S_std   = [0.243, 0.171, 0.120, 0.086]
mat_S_upper_err = mat_S_mean + mat_S_std
mat_S_lower_err = mat_S_mean - mat_S_std
mat_S_upper_err = reshape(mat_S_upper_err,(1,length(mat_S_upper_err)))
mat_S_lower_err = reshape(mat_S_lower_err,(1,length(mat_S_lower_err)))
mat_S_error = [mat_S_lower_err; mat_S_upper_err]

mat_D_mean  = [3.169, 3.174, 3.177, 3.178]
mat_D_true  = [3.178, 3.178, 3.178, 3.178]
mat_D_std   = [0.350, 0.174, 0.123, 0.088]
mat_D_upper_err = mat_D_mean + mat_D_std
mat_D_lower_err = mat_D_mean - mat_D_std
mat_D_upper_err = reshape(mat_D_upper_err,(1,length(mat_D_upper_err)))
mat_D_lower_err = reshape(mat_D_lower_err,(1,length(mat_D_lower_err)))
mat_D_error = [mat_D_lower_err; mat_D_upper_err]



# #=
println(size(mat_A1_true))
println()
println(size(mat_A1_error))
println()
# =#

num_cols = [8, 16, 32, 64]

fig = figure("pyplot_annotation",figsize=(12,9)) # Create a new figure
ax = gca() # Get the handle of the current axis

plot(num_cols,mat_A1_true,
          linestyle="-",
          linewidth=4,
          color="black")
errorbar(num_cols,mat_A1_mean,yerr=mat_A1_error,
         fmt="o",
         color="blue",
         linewidth=4)

font1 = Dict("family"=>"serif",
             "color"=>"black",
             "weight"=>"normal",
             "size"=>40)

title("Matrix A1 Norm Distribution",fontdict=font1)
xlabel("Number of Columns (d)",fontdict=font1)
ylabel("Mean and Std",fontdict=font1)

#xscale("log")
xlim([6,80])
ylim([2,2.6])
major_xticks = [8,16,32,64]
xticks([8,16,32,64])

setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
tight_layout()

fname = "mat_A1_error_test.pdf"
savefig(fname)
close()

#p = plot_date(x,y,linestyle="-",marker="None",label="Base Plot")
# Basic line plot
#pe = errorbar(x,y,yerr=errs,fmt="o") # Plot irregular error bars
    # Plot irregular error bars
#grid("on")

#=
x = [DateTime(2013,10,4):Dates.Day(1):DateTime(2013,10,9);]
y = [0.9;0.75;0.5;0.4;0.35;0.3]
uppererror = [0.05 0.05 0.05 0.03 0.15 0.05;]
lowererror = [0.15 0.2 0.05 0.1 0.05 0.05;]
errs = [lowererror;uppererror]

println("From " * string(x[1]) * " to " * string(x[end]))

p
x = Dates.value.(x)/1000/60/60/24 # Convert time from milliseconds from day 0 to days from day 0

fig = figure("pyplot_errorbar",figsize=(10,10)) # Create a new figure
p = plot_date(x,y,linestyle="-",marker="None",label="Base Plot")
# Basic line plot
pe = errorbar(x,y,yerr=errs,fmt="o") # Plot irregular error bars
axis("tight")
ax = gca() # Get the handle of the current axis
title("Error Bar Example")
xlabel("Time")
ylabel("Some Data")
grid("on")

fig[:autofmt_xdate](bottom=0.2,rotation=30,ha="right") # Autoformat the time format and rotate the labels so they don't overlap
fig[:canvas][:draw]() # Update the figure


fname = "error_bar_example.pdf"
savefig(fname)
close()
=#



