//MODIFIED SECANT METHOD
//Mary Elizabeth E. Chua

function f=f(x)     
    f= x^3 + 2*x^2 -x - 1
endfunction

function f1=f1(x)
    f1= (3*x^2) + (4*x) - 1
endfunction

function u=u(x)
    u = f(x)/f1(x)
endfunction

tv=0.80193773580483825247220463901489010

iter = 0
imax = 20

xrolder = 0
xrold = 1

es = 0.0001
ea = 100

mprintf("\n i\t xi-1\t\t xi\t\t xi+1\t\t ea\t\t et\t")

while ((ea>es)&(iter<=imax))
    
    xr = xrold - (u(xrold)*(xrolder-xrold))/(u(xrolder)-u(xrold))
    et=abs((tv-xr)/tv)*100
    
    if (iter==0) then
        ea = 100;
    elseif (xr~=0) then
        ea = abs((xr-xrold)/xr) * 100;
    end
    
    mprintf("\n %d\t %.7f\t %.7f\t %.7f\t %.6f\t\t %.3f", iter, xrolder, xrold, xr, ea, et)
    
    xrolder = xrold;
    xrold = xr;
    
    iter = iter + 1
    
end

disp(xr)
