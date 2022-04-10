clear
clc
close all

%% PARALLELIZATION
%parpool;

%%
dim = 15; %max for base 10 is 15
base = 10;
it = zeros(dim,1);

for j = 1:dim
    i = 1;
    while exp(1)-((1+1/i)^i) > base^(-j)
        i = i+1;
    end
    it(j) = i;
    disp(j);
end

%%
loglog(it);
grid on;

%%
delete(gcp('nocreate')); %shutting down parallel pool
