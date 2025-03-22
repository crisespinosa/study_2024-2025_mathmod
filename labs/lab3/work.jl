using DifferentialEquations, Plots;

function reg(u, p, t)
   x,y = u
   a,b,c,h= p
   dx = -a*x - b*y + 1.6*sin(t)
   dy = -c*x - h*y + 1.7*cos(2t)
   return [dx, dy]
end

u0= [10000, 29000]
p = [0.333, 0.777, 0.5, 0.65]
tspan = (0,1)

prob = ODEProblem(reg, u0, tspan, p)

sol = solve(prob, Tsit5())

plot(sol, title = "Модель боевых действий №1",  label = ["Армия X" "Армия Y"], xaxis = "Время", yaxis = "Численность армии")
