% NPA level 1 for the Clifford MoE game
% Author: Eric Culf
% The package CVX is required to run this code: https://cvxr.com/cvx/

global N;

N=8; %Size of the instance

cvx_solver sedumi; %Choice of CVX solver: SDPT3 runs better for small N, but sedumi can handle larger N

G0=eye(1+3*N^2); %Setting up constant G matrices: note that G2 and G3 are swapped from the paper to be in line with the level 2 definitions
G1=zeros(1+3*N^2);
G2=zeros(1+3*N^2);
G3=zeros(1+3*N^2);

for i=1:N
    G1(1,b(i))=1;
    G1(b(i),1)=1;
    G1(1,c(i))=1;
    G1(c(i),1)=1;
    G2(b(i),c(i))=1;
    G2(c(i),b(i))=1;
    for j=1:N
        if i~=j
            G3(b(i),b(j))=1;
            G3(c(i),c(j))=1;
        end
    end
end

cvx_begin sdp % SDP solver
cvx_precision low % Precision can be changed to high if needed
    variable g1
    variable g2
    variable g3
    maximize 2*g1+g2
    subject to
    G0+g1*G1+g2*G2+g3*G3>=0;
cvx_end

w=1/4+cvx_optval/4 % Upper bound on winning probability given by SDP
wc=1/2+1/(2*sqrt(N)) % Conjectured winning probability

function val=b(i) % Functions relating Gram matrix labels to indices
    global N;
    val=1+i;
end

function val=c(i)
    global N;
    val=1+N+i;
end
