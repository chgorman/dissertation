# Plot Data
using PyPlot

# MSN interp Runge Single
#=
Run Notes:
1d interpolation
This is the standard batch run.


float_type = Float32
int_type = Int64

scale_factor = 1.0
R_value = 25.0

Max Diff Array
=#

#Points    s = 2.0  s = 3.0  s = 4.0  s = 5.0  s = 6.0 

real_data = [
11   2.06e-02 3.18e-02 7.25e-02 1.93e-01 3.74e-01;
21   3.44e-03 2.61e-04 8.98e-04 3.97e-03 2.15e-02;
31   8.68e-04 2.00e-04 4.23e-05 1.32e-05 2.46e-04;
41   2.72e-04 3.50e-05 1.00e-05 3.28e-06 5.30e-06;
51   1.04e-04 6.50e-06 1.19e-06 6.56e-07 1.43e-06;
61   4.66e-05 2.15e-06 5.55e-07 1.05e-06 4.51e-07;
71   2.34e-05 9.54e-07 4.92e-07 1.02e-06 2.45e-06;
81   1.29e-05 5.36e-07 5.07e-07 5.36e-07 2.91e-06;
91   7.57e-06 5.96e-07 5.36e-07 6.48e-07 4.27e-06;
101  4.83e-06 4.32e-07 4.92e-07 7.26e-07 9.04e-06]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=3")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=5")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=6")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Interpolation Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,101])
ylim([1e-7,1e-0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_interp_1d_single_runge.pdf"
savefig(fname)
close()


# MSN interp Runge Single
#=
float_type = Float64
int_type = Int64

scale_factor = 1.0
R_value = 25.0
=#
# Max Diff Array

real_data = [
11   2.06e-02 7.25e-02 3.74e-01 8.31e-01 1.25e+00 1.54e+00;
21   3.44e-03 8.97e-04 2.15e-02 2.22e-01 1.10e+00 3.48e+00;
31   8.68e-04 4.23e-05 2.46e-04 1.05e-02 1.32e-01 9.18e-01;
41   2.72e-04 9.83e-06 1.27e-06 2.03e-04 6.47e-03 8.60e-02;
51   1.04e-04 1.42e-06 1.79e-07 2.41e-07 1.75e-04 4.58e-03;
61   4.62e-05 2.09e-07 2.00e-08 1.07e-07 1.58e-06 1.53e-04;
71   2.33e-05 4.11e-08 2.24e-09 4.01e-09 9.65e-08 2.59e-06;
81   1.29e-05 1.14e-08 2.70e-10 9.69e-11 6.34e-09 6.15e-08;
91   7.75e-06 3.73e-09 3.65e-11 3.59e-12 2.40e-10 7.46e-09;
101  4.93e-06 1.39e-09 5.90e-12 3.70e-13 7.67e-12 4.04e-10;
111  3.28e-06 5.76e-10 1.38e-12 1.74e-13 2.48e-12 4.48e-11;
121  2.26e-06 3.44e-10 3.81e-13 1.29e-13 1.35e-12 2.23e-11;
131  1.91e-06 2.48e-10 1.19e-13 2.08e-13 2.30e-12 3.42e-11;
141  1.65e-06 1.84e-10 4.02e-14 1.07e-13 1.20e-12 7.04e-12;
151  1.43e-06 1.39e-10 1.50e-14 2.80e-13 4.12e-12 6.08e-11;
161  1.26e-06 1.07e-10 6.33e-15 1.51e-13 2.71e-12 3.83e-11]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Interpolation Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,161])
ylim([1e-15,1e-0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_interp_1d_double_runge.pdf"
savefig(fname)
close()



# Table 1: Single precision MSN 1D Birkhoff
real_data = [
11   1.40e-02 9.98e-03 1.93e-02 4.28e-02;
21   1.12e-03 9.15e-04 2.77e-04 1.01e-04;
31   1.87e-03 1.23e-04 3.07e-05 6.54e-06;
41   1.73e-03 4.77e-05 1.95e-06 1.66e-06;
51   1.47e-03 5.14e-05 4.29e-06 3.34e-06;
61   1.22e-03 4.30e-05 2.77e-06 2.99e-06]

real_points = real_data[:,1]


fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=3")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=5")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Interpolation Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-6,1e-1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_1d_single.pdf"
savefig(fname)
close()



# Table 2: Double precision MSN 1D Birkhoff
real_data = [
21  1.12e-03 2.78e-04 1.77e-04 2.57e-03 1.83e-02 7.56e-02;
41  1.73e-03 1.86e-06 5.32e-07 5.70e-08 1.23e-07 3.18e-07;
61  1.22e-03 2.73e-06 1.65e-07 1.49e-08 1.95e-09 5.15e-10;
81  8.37e-04 1.31e-06 3.84e-08 2.11e-09 1.51e-10 2.70e-11;
101 6.04e-04 6.30e-07 1.05e-08 3.68e-10 1.36e-11 3.76e-12;
121 4.55e-04 3.27e-07 3.35e-09 7.92e-11 1.42e-12 4.42e-12;
141 3.54e-04 1.83e-07 1.21e-09 2.00e-11 3.71e-13 4.32e-12;
161 2.83e-04 1.09e-07 4.78e-10 5.87e-12 7.24e-13 1.62e-11]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Interpolation Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([20,161])
ylim([1e-13,1e-1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_1d_double.pdf"
savefig(fname)
close()



#=
# Table 3: Single precision MSN 1D Birkhoff, interlaced information
real_data = [
11 1.48e-02 1.25e-02 1.69e-02 2.50e-02;
21 2.07e-03 1.08e-03 6.39e-04 5.74e-04;
31 1.68e-03 1.59e-04 6.03e-05 3.92e-05;
41 1.36e-03 4.69e-05 7.74e-06 4.02e-06;
51 1.10e-03 3.13e-05 2.86e-06 3.03e-06;
61 8.93e-04 2.12e-05 4.02e-06 3.80e-06]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=3")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=5")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Interpolation Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-6,1e-1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_1d_single_interlace.pdf"
savefig(fname)
close()



# Table 4: Double precision MSN 1D Birkhoff, interlaced information
real_data = [
21  2.07e-03 6.41e-04 6.34e-04 1.25e-03 8.21e-03 5.86e-02;
41  1.36e-03 6.89e-06 1.94e-06 1.33e-06 1.06e-06 9.37e-07;
61  8.93e-04 1.30e-06 4.58e-08 7.60e-09 2.47e-09 1.88e-09;
81  6.07e-04 3.98e-07 1.86e-09 4.37e-11 8.73e-11 4.54e-11;
101 4.31e-04 1.55e-07 1.21e-09 7.21e-11 1.55e-11 3.27e-12;
121 3.22e-04 7.13e-08 5.72e-10 2.89e-11 3.25e-12 5.29e-12;
141 2.48e-04 3.68e-08 3.12e-10 1.07e-11 7.22e-13 7.30e-13;
161 1.97e-04 2.11e-08 1.68e-10 4.17e-12 1.70e-13 1.95e-12]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Interpolation Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([20,161])
ylim([1e-13,1e-1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_1d_double_interlace.pdf"
savefig(fname)
close()
=#



# Table 5: Single precision MSN 2D Birkhoff
real_data = [
11 1.42e-01 1.03e-01 1.04e-01 1.02e-01;
21 5.60e-02 2.41e-02 1.38e-02 8.44e-03;
31 2.98e-02 9.55e-03 4.76e-03 2.76e-03;
41 1.88e-02 5.48e-03 2.15e-03 9.72e-04;
51 1.30e-02 3.52e-03 1.16e-03 4.36e-04;
61 1.02e-02 2.42e-03 6.66e-04 5.87e-04]

real_points = real_data[:,1]


fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=3")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=5")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-4,1e0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_single.pdf"
savefig(fname)
close()



# Table 6: Double precision MSN 2D Birkhoff
real_data = [
11 1.42e-01 1.04e-01 1.02e-01 3.53e-01 9.02e-01 1.88e+00;
21 5.60e-02 1.38e-02 8.24e-03 5.30e-02 2.40e-01 7.44e-01;
31 2.98e-02 4.76e-03 1.72e-03 1.33e-03 7.60e-03 3.75e-02;
41 1.88e-02 2.16e-03 4.85e-04 1.69e-04 1.73e-03 1.38e-02;
51 1.30e-02 1.15e-03 1.84e-04 4.61e-05 2.23e-05 8.23e-05;
61 1.02e-02 6.81e-04 8.19e-05 1.59e-05 5.57e-06 5.59e-05]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-6,1e0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_double.pdf"
savefig(fname)
close()



#=
# Table 7: Double precision MSN 2D Birkhoff, Tensor grid intersect annulus
real_data = [
11 1.42e-01 2.64e-01 4.32e-01 1.07e+00 2.89e+00 4.78e+00;
21 7.57e-02 4.13e-02 2.03e-02 1.67e-01 1.13e+00 4.41e+00;
31 3.11e-02 9.64e-03 1.46e-02 2.69e-02 1.09e-01 3.76e-01;
41 3.18e-02 4.12e-03 2.51e-03 6.09e-03 9.58e-03 5.68e-02;
51 2.05e-02 1.54e-03 8.55e-04 4.63e-04 1.32e-03 5.02e-03;
61 9.86e-03 9.09e-04 1.19e-04 4.48e-04 4.94e-04 4.11e-04]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-4,1e1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_double_intersect_annulus.pdf"
savefig(fname)
close()



# Table 8: Double precision MSN 2D Birkhoff, annular grid
real_data = [
5  9.15e-02 4.20e-02 4.91e-02 1.84e-01 4.39e-01 7.84e-01;
7  1.74e-02 8.52e-03 7.92e-03 1.97e-02 6.31e-02 4.05e-01;
9  7.36e-03 2.50e-03 1.71e-03 4.99e-03 1.55e-02 6.31e-02;
11 8.56e-03 8.26e-04 5.07e-04 7.21e-04 1.94e-03 1.36e-02;
13 5.62e-03 2.85e-04 1.73e-04 1.73e-04 3.70e-04 2.22e-03;
15 2.94e-03 1.15e-04 6.62e-05 3.63e-05 5.70e-05 3.45e-04]

#(5,32), (7,48), (9,64), (11,80), (13,96), (15,112)

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Annular Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([4,16])
ylim([1e-5,1e0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_double_annular_grid.pdf"
savefig(fname)
close()



# Table 9: Single precision MSN 2D Birkhoff, tensor grid, interlaced
real_data = [
11 1.20e-01 8.09e-02 6.78e-02 1.19e-01;
21 3.70e-02 1.10e-02 6.36e-03 4.88e-03;
31 1.88e-02 3.00e-03 1.02e-03 6.21e-04;
41 1.14e-02 1.63e-03 4.58e-04 1.59e-04;
51 7.89e-03 1.02e-03 2.49e-04 7.35e-05;
61 6.04e-03 6.87e-04 1.48e-04 4.12e-05]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=3")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=5")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-5,1e-1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_single_interlace.pdf"
savefig(fname)
close()



# Table 10: Single precision MSN 2D Birkhoff, interlaced off-diagonal direc
real_data = [
11 1.20e-01 8.09e-02 6.78e-02 1.19e-01;
21 3.70e-02 1.10e-02 6.36e-03 4.88e-03;
31 1.88e-02 3.00e-03 1.03e-03 6.24e-04;
41 1.14e-02 1.64e-03 4.60e-04 1.60e-04;
51 7.89e-03 1.02e-03 2.47e-04 6.73e-05;
61 6.04e-03 6.88e-04 1.46e-04 3.37e-05]

real_points = real_data[:,1]


fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=3")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=5")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-5,1e-1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_single_interlace_off.pdf"
savefig(fname)
close()



# Table 11: Double precision MSN 2D Birkhoff, interlaced
real_data = [
11 1.20e-01 6.78e-02 3.45e-01 1.63e+00 4.58e+00 1.37e+01;
21 3.70e-02 6.36e-03 1.53e-02 7.04e-02 2.11e-01 1.06e+00;
31 1.88e-02 1.03e-03 7.85e-04 2.11e-03 2.82e-02 2.71e-01;
41 1.14e-02 4.60e-04 6.05e-05 8.40e-05 3.29e-03 4.06e-02;
51 7.89e-03 2.49e-04 2.30e-05 7.96e-06 2.35e-04 2.92e-03;
61 6.04e-03 1.47e-04 1.12e-05 1.68e-06 1.39e-05 6.29e-05]

real_points = real_data[:,1]


fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-6,1e1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_double_interlace.pdf"
savefig(fname)
close()



# Table 12: Double precision MSN 2D Birkhoff, interlaced off-diagonal direc
real_data = [
11 1.20e-01 6.78e-02 3.45e-01 1.63e+00 4.58e+00 1.37e+01;
21 3.70e-02 6.36e-03 1.53e-02 7.04e-02 2.11e-01 1.06e+00;
31 1.88e-02 1.03e-03 7.85e-04 2.11e-03 2.82e-02 2.71e-01;
41 1.14e-02 4.60e-04 6.05e-05 8.40e-05 3.29e-03 4.06e-02;
51 7.89e-03 2.49e-04 2.30e-05 7.96e-06 2.35e-04 2.92e-03;
61 6.04e-03 1.47e-04 1.12e-05 1.68e-06 1.39e-05 6.30e-05]

real_points = real_data[:,1]


fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-6,1e1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_double_interlace_off.pdf"
savefig(fname)
close()



# Table 13: Single precision MSN 2D Birkhoff Sphere
real_data = [
11 2.99e-01 2.94e-01 3.53e-01 4.05e-01;
21 1.16e-01 7.37e-02 6.41e-02 6.13e-02;
31 3.63e-02 1.38e-02 9.05e-03 7.65e-03;
41 1.62e-02 3.83e-03 1.79e-03 1.27e-03;
51 7.85e-03 1.24e-03 4.14e-04 2.59e-04]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=3")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=5")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Theta Divisions",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,51])
ylim([1e-4,1e0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_sphere_single.pdf"
savefig(fname)
close()



# Table 14: Double precision MSN 2D Birkhoff Sphere
real_data = [
11 2.99e-01 3.53e-01 4.36e-01 4.71e-01 4.90e-01 5.03e-01;
21 1.16e-01 6.41e-02 6.04e-02 6.07e-02 6.14e-02 6.19e-02;
31 3.63e-02 9.05e-03 7.20e-03 7.68e-03 8.35e-03 9.23e-03;
41 1.62e-02 1.79e-03 1.06e-03 9.16e-04 8.90e-04 8.68e-04;
51 7.85e-03 4.12e-04 1.89e-04 1.64e-04 1.59e-04 1.59e-04]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Theta Divisions",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,51])
ylim([1e-4,1e0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_sphere_double.pdf"
savefig(fname)
close()



# Table 15: Double precision MSN 2D Birkhoff Sphere, Patches
real_data = [
15  6.80e-01 9.08e-01 1.20e+00 1.54e+00 1.78e+00 1.89e+00;
39  2.35e-01 2.52e-01 2.18e-01 1.60e-01 2.04e-01 3.65e-01;
63  9.12e-02 4.83e-02 4.21e-02 3.83e-02 3.50e-02 2.80e-02;
87  1.92e-02 7.11e-03 6.49e-03 5.89e-03 4.75e-03 3.57e-03;
111 1.71e-02 1.89e-03 1.38e-03 1.03e-03 6.48e-04 5.94e-04]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Theta Divisions",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([15,111])
ylim([1e-4,1e0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_sphere_patch_double.pdf"
savefig(fname)
close()



# Table 16: Single precision MSN 2D Birkhoff Easy
real_data = [
11 6.23e-02 3.15e-02 2.55e-02 2.03e-02;
21 2.20e-02 6.85e-03 2.79e-03 1.36e-03;
31 1.12e-02 2.78e-03 8.05e-04 2.96e-04;
41 7.52e-03 1.50e-03 3.35e-04 1.43e-04;
51 5.52e-03 9.08e-04 1.70e-04 8.42e-05;
61 4.24e-03 5.95e-04 6.60e-04 8.80e-04]

real_points = real_data[:,1]


fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=3")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=5")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-5,1e-1])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_single_easy.pdf"
savefig(fname)
close()
=#



# Table 17: Double precision MSN 2D Birkhoff Easy
real_data = [
11 6.23e-02 2.55e-02 2.66e-02 8.11e-02 1.72e-01 3.00e-01;
21 2.20e-02 2.79e-03 7.54e-04 1.48e-03 6.72e-03 2.05e-02;
31 1.12e-02 8.06e-04 1.19e-04 3.49e-05 2.97e-05 1.81e-04;
41 7.51e-03 3.30e-04 2.91e-05 5.55e-06 1.73e-06 5.67e-06;
51 5.52e-03 1.63e-04 9.66e-06 1.37e-06 2.83e-07 9.92e-08;
61 4.24e-03 9.00e-05 3.89e-06 4.34e-07 6.54e-08 1.75e-08]

real_points = real_data[:,1]

fig = figure("pyplot_annotation",figsize=(12,9))
ax = gca()

plot(real_points,real_data[:,2],linestyle="-",linewidth=4,label="s=2")
plot(real_points,real_data[:,3],linestyle="-",linewidth=4,label="s=4")
plot(real_points,real_data[:,4],linestyle="-",linewidth=4,label="s=6")
plot(real_points,real_data[:,5],linestyle="-",linewidth=4,label="s=8")
plot(real_points,real_data[:,6],linestyle="-",linewidth=4,label="s=10")
plot(real_points,real_data[:,7],linestyle="-",linewidth=4,label="s=12")
yscale("log")

font1 = Dict("family"=>"serif",
            "color"=>"black",
            "weight"=>"normal",
            "size"=>40)
xlabel("Tensor Grid Points",fontdict=font1)
ylabel("Rel Error",fontdict=font1)
setp(ax[:get_xticklabels](),fontsize=32,color="black")
setp(ax[:get_yticklabels](),fontsize=32,color="black")
xlim([10,61])
ylim([1e-8,1e0])
tight_layout()
plt[:legend](fontsize=28)

fname = "msn_birkhoff_2d_double_easy.pdf"
savefig(fname)
close()


