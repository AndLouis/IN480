using PyPlot
function Eule(x0,y0,k,maxtime,precision,alfa=0)
#maxtime is like a range time
	dt = 1/precision
	t = collect(linspace(0,maxtime,precision))
	x = Array{Float64}(precision)
	x[1] = x0
	y = Array{Float64}(precision)
	y[1]=y0
	for i=2:precision
		x[i]=x[i-1] + dt*y[i-1]
		y[i]=y[i-1] + dt*(-k*x[i-1]+alfa*y[i-1])
	end
	return (y,x)
end

plot(Eule(0,-0.1,-2,10,10))
