function [WWWW1,WWWW2,WWWW3,WWWW4]=muco(w3,w1,w2,zxwq,W, W1,sa,Aop,sa1,po)
W2=[];
W3=[];
W4=[];
for i=1:w3
 ER=[W1;{[sa(w1(i));zxwq(w2(i))]}];
    W2=[W2,ER];
    sa(w1(i))=[];
    W3=[W3,{sa}];
    Aop(w1(i),:)=[];
    Aop( :,w1(i))=[];
    W4=[W4,{Aop}];
    WWWW1=W4;
    WWWW2=W3;
    WWWW3=sa;
    WWWW4=W2;
    sa=sa1;
    Aop=po;
end


