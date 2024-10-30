% NPA level 2 for the Clifford MoE game
% Author: Eric Culf
% The package CVX is required to run this code: https://cvxr.com/cvx/

global N;

N=8; %Size of the instance

cvx_solver sedumi; %Choice of CVX solver: SDPT3 runs better for small N, but sedumi can actually run on larger N

G0=eye(1+3*N^2); %Setting up constant G matrices - this is very long at level 2
G1=zeros(1+3*N^2);
G2=zeros(1+3*N^2);
G3=zeros(1+3*N^2);
G4=zeros(1+3*N^2);
G5=zeros(1+3*N^2);
G6=zeros(1+3*N^2);
G7=zeros(1+3*N^2);
G8=zeros(1+3*N^2);
G9=zeros(1+3*N^2);
G10=zeros(1+3*N^2);
G11=zeros(1+3*N^2);
G12=zeros(1+3*N^2);
G13=zeros(1+3*N^2);
G14=zeros(1+3*N^2);
G15=zeros(1+3*N^2);
G16=zeros(1+3*N^2);
G17=zeros(1+3*N^2);
G18=zeros(1+3*N^2);

for i=1:N
    G1(1,b(i))=1;
    G1(b(i),1)=1;
    G1(1,c(i))=1;
    G1(c(i),1)=1;
    G1(b(i),bc(i,i))=1;
    G1(bc(i,i),b(i))=1;
    G1(c(i),bc(i,i))=1;
    G1(bc(i,i),c(i))=1;
    G2(1,bc(i,i))=1;
    G2(bc(i,i),1)=1;
    G2(b(i),c(i))=1;
    G2(c(i),b(i))=1;
    for j=1:N
        if i~=j
            G1(b(i),bc(i,j))=1;
            G1(bc(i,j),b(i))=1;
            G1(c(i),bc(j,i))=-1;
            G1(bc(j,i),c(i))=-1;
            G1(b(i),bb(i,j))=1;
            G1(bb(i,j),b(i))=1;
            G1(c(i),cc(i,j))=1;
            G1(cc(i,j),c(i))=1;
            G2(bc(i,j),bb(i,j))=1;
            G2(bb(i,j),bc(i,j))=1;
            G2(bc(i,j),cc(j,i))=-1;
            G2(cc(j,i),bc(i,j))=-1;
            G3(b(i),b(j))=1;
            G3(c(i),c(j))=1;
            G3(bc(i,i),bc(i,j))=1;
            G3(bc(i,j),bc(i,i))=1;
            G3(bc(i,i),bc(j,i))=-1;
            G3(bc(j,i),bc(i,i))=-1;
            G3(1,bb(i,j))=1;
            G3(bb(i,j),1)=1;
            G3(1,cc(i,j))=1;
            G3(cc(i,j),1)=1;
            G4(b(j),bc(i,i))=1;
            G4(bc(i,i),b(j))=1;
            G4(b(i),bc(j,i))=-1;
            G4(bc(j,i),b(i))=-1;
            G4(c(j),bc(i,i))=1;
            G4(bc(i,i),c(j))=1;
            G4(c(i),bc(i,j))=1;
            G4(bc(i,j),c(i))=1;
            G4(c(i),bb(i,j))=1;
            G4(bb(i,j),c(i))=1;
            G4(c(i),bb(j,i))=-1;
            G4(bb(j,i),c(i))=-1;
            G4(b(i),cc(i,j))=1;
            G4(cc(i,j),b(i))=1;
            G4(b(i),cc(j,i))=-1;
            G4(cc(j,i),b(i))=-1;
            G6(bc(i,i),bc(j,j))=1;
            G6(bb(i,j),cc(j,i))=-1;
            G6(cc(j,i),bb(i,j))=-1;
            G7(bc(i,j),bc(j,i))=1;
            G7(bb(i,j),cc(i,j))=-1;
            G7(cc(i,j),bb(i,j))=-1;
            G10(b(i),bb(j,i))=1;
            G10(bb(j,i),b(i))=1;
            G10(c(i),cc(j,i))=1;
            G10(cc(j,i),c(i))=1;
            G12(bc(i,j),bb(j,i))=1;
            G12(bb(j,i),bc(i,j))=1;
            G12(bc(i,j),cc(i,j))=-1;
            G12(cc(i,j),bc(i,j))=-1;
            G15(bb(i,j),bb(j,i))=1;
            G15(cc(i,j),cc(j,i))=1;
            for k=1:N
                if i~=k && j~=k
                    G3(bc(i,j),bc(i,k))=1;
                    G3(bc(j,i),bc(k,i))=1;
                    G3(bb(i,j),bb(i,k))=1;
                    G3(cc(i,j),cc(i,k))=1;
                    G5(b(i),bc(j,k))=1;
                    G5(bc(i,j),b(k))=1;
                    G5(bc(i,j),c(k))=-1;
                    G5(c(i),bc(j,k))=-1;
                    G5(c(i),bb(j,k))=1;
                    G5(bb(j,k),c(i))=1;
                    G5(b(i),cc(j,k))=1;
                    G5(cc(j,k),b(i))=1;
                    G8(bc(i,j),bc(k,i))=1;
                    G8(bc(i,j),bc(j,k))=1;
                    G8(bb(i,j),cc(i,k))=-1;
                    G8(cc(i,k),bb(i,j))=-1;
                    G8(bb(i,j),cc(k,j))=1;
                    G8(cc(k,j),bb(i,j))=1;
                    G11(b(i),bb(j,k))=1;
                    G11(bb(j,k),b(i))=1;
                    G11(c(i),cc(j,k))=1;
                    G11(cc(j,k),c(i))=1;
                    G13(bc(i,i),bb(j,k))=1;
                    G13(bb(j,k),bc(i,i))=1;
                    G13(bc(i,j),bb(k,j))=1;
                    G13(bb(k,j),bc(i,j))=1;
                    G13(bc(i,i),cc(j,k))=1;
                    G13(cc(j,k),bc(i,i))=1;
                    G13(bc(i,j),cc(k,i))=-1;
                    G13(cc(k,i),bc(i,j))=-1;
                    G14(bc(i,j),bb(j,k))=1;
                    G14(bb(j,k),bc(i,j))=1;
                    G14(bc(i,j),cc(i,k))=-1;
                    G14(cc(i,k),bc(i,j))=-1;
                    G16(bb(i,j),bb(k,i))=1;
                    G16(bb(k,i),bb(i,j))=1;
                    G16(cc(i,j),cc(k,i))=1;
                    G16(cc(k,i),cc(i,j))=1;
                    G17(bb(i,j),bb(k,j))=1;
                    G17(cc(i,j),cc(k,j))=1;
                    for l=1:N
                        if i~=l && j~=l && k~=l
                            G9(bc(i,j),bc(k,l))=1;
                            G9(bb(i,j),cc(k,l))=1;
                            G9(cc(k,l),bb(i,j))=1;
                            G18(bb(i,j),bb(k,l))=1;
                            G18(cc(i,j),cc(k,l))=1;
                        end
                    end
                end
            end
        end
    end
end

cvx_begin sdp % SDP solver
cvx_precision low % Precision can be changed to high if needed
    variable g1
    variable g2
    variable g3
    variable g4
    variable g5
    variable g6
    variable g7
    variable g8
    variable g9
    variable g10
    variable g11
    variable g12
    variable g13
    variable g14
    variable g15
    variable g16
    variable g17
    variable g18
    maximize 2*g1+g2
    subject to
    G0+g1*G1+g2*G2+g3*G3+g4*G4+g5*G5+g6*G6+g7*G7+g8*G8+g9*G9+g10*G10+g11*G11+g12*G12+g13*G13+g14*G14+g15*G15+g16*G16+g17*G17+g18*G18>=0;
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

function val=bc(i,j)
    global N;
    val=1+N+N*i+j;
end

function val=bb(i,j) %i~=j
    global N;
    if i>j
        val=1+2*N+N^2+(N-1)*(i-1)+j;
    else
        val=2*N+N^2+(N-1)*(i-1)+j;
    end
end

function val=cc(i,j) %i~=j
    global N;
    if i>j
        val=1+N+2*N^2+(N-1)*(i-1)+j;
    else
        val=N+2*N^2+(N-1)*(i-1)+j;
    end
end
