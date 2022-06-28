%Get Channel Model
%%Input variables
% M length of rows
% N length of cols
% ch : if equal 1 => Rayleigh
%    :          0 => Rician
% K :k-factor of rician

%% Output variable
% H : output matrix 

function [H] = ch_model(M, N, ch, K)

 X = randn(M,N);
 Y = randn(M,N);
 j = sqrt(-1);

 if (ch) %Rayleigh
 
 	H = sqrt(0.5) * (X + j * Y);
 
 else 	%Rician
 	sigma_l = 1;
 	H = sqrt(K / (K+1) ) * (ones(M,N) * sigma_l) * exp(j*2*pi*rand(M,N)) + sqrt(1/(K+1)) * sigma_l * (X + j * Y);
 end



end
