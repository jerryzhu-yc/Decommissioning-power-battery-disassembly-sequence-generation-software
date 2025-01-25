function [AAOP]=comc1(Aop)

[mq1,nq1]=size( Aop);
    po3=cell(nq1,1);
    ww=[];
    for ix=1:nq1
        for jx=1:nq1
            ww=[ww;  cell2mat(Aop(ix,jx))];
        end
        [mm,nn]=size(ww);
        we='000000';
        for k1=1:nn
            wk=ww(:,k1);
            [mm1,nn1]=size(wk);
            for k2=1:mm1
                if wk(k2)=='1'
                    we(k1)='1';
                    break;
                end
            end
        end
        po3(ix,1)=cellstr(we);
        ww=[];
        AAOP=po3;
    end