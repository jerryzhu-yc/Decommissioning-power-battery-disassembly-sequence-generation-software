function varargout = user(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @user_OpeningFcn, ...
    'gui_OutputFcn',  @user_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
function user_OpeningFcn(hObject, eventdata, handles, varargin)
global www1;
global www2;
global www3;
global www4;
global www5;
global www6;
global wb1;
www1=[];
www2=[];
www3=[];
www4=[];
www5=[];
www6=[];
wb1=[];

handles.output = hObject;
guidata(hObject, handles);
function varargout = user_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;
function edit1_Callback(hObject, eventdata, handles)
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton1_Callback(hObject, eventdata, handles)

global www1;
global www2;
global www3;
global www4;
global www5;
global www6;
global po1;
global po;
[filename,pathname] = uiputfile('*.mat','保存文件' );
save(fullfile(pathname,filename),'www1','www2','www3','www4','www5','www6','po1','po');
msgbox('保存成功')
function popupmenu2_Callback(hObject, eventdata, handles)
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton2_Callback(hObject, eventdata, handles)
global www1;
global www2;
global www3;
global www4;
global www5;
global www6;
global aa1;
aa1 = get(handles.edit1,'String');
aa1      = str2double(aa1);
www1=zeros(aa1,aa1);
www2=zeros(aa1,aa1);
www3=zeros(aa1,aa1);
www4=zeros(aa1,aa1);
www5=zeros(aa1,aa1);
www6=zeros(aa1,aa1);
set(handles.uitable1,'Data', www1);
set(handles.uitable2,'Data', www2);
set(handles.uitable3,'Data', www3);
set(handles.uitable4,'Data', www4);
set(handles.uitable5,'Data', www5);
set(handles.uitable6,'Data', www6);

function pushbutton3_Callback(hObject, eventdata, handles)
set(handles.uitable1,'Data', []);
set(handles.uitable2,'Data', []);
set(handles.uitable3,'Data', []);
set(handles.uitable4,'Data', []);
set(handles.uitable5,'Data', []);
set(handles.uitable6,'Data', []);
set(handles.uitable7,'Data', []);
set(handles.uitable9,'Data', []);
set(handles.edit1,'String',[]);
set(handles.edit2,'String',[]);
set(handles.edit3,'String',[]);
set(handles.edit4,'String',[]);
set(handles.edit5,'String',[]);
set(handles.edit6,'String',[]);
set(handles.edit7,'String',[]);
set(handles.edit8,'String',[]);
set(handles.edit9,'String',[]);
set(handles.edit10,'String',[]);
set(handles.edit11,'String',[]);
set(handles.edit12,'String',[]);
set(handles.edit13,'String',[]);

function edit2_Callback(hObject, eventdata, handles)
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit3_Callback(hObject, eventdata, handles)
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu3_Callback(hObject, eventdata, handles)
global www1;
global aa1;

aa2 = get(handles.edit2,'String');
aa2      = str2double(aa2);
aa3 = get(handles.edit3,'String');
aa3      = str2double(aa3);
ww11=get(handles.popupmenu3,'Value');
if aa1>=aa2&&aa1>=aa3
    
    if ww11==2
        www1(aa2,aa3)=0;
    elseif ww11==3
        www1(aa2,aa3)=1;
    end
    set(handles.uitable1,'Data', www1);
    msgbox('修改成功');
else
    msgbox('输入错误，请重新输入');
end
function popupmenu3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function popupmenu9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton4_Callback(hObject, eventdata, handles)
global wb1;
global www1;
global www2;
global www3;
global www4;
global www5;
global www6;
global aa1;
global po1;
global po;
po=cell(aa1,aa1);
po1=cell(aa1,1);
if wb1==2
    %or
    
    for i=1:aa1
        for j=1:aa1
            cv1=num2str(www1(i,j));
            cv2=num2str(www2(i,j));
            cv3=num2str(www3(i,j));
            cv4=num2str(www4(i,j));
            cv5=num2str(www5(i,j));
            cv6=num2str(www6(i,j));
            po(i,j)=cellstr([cv1,cv2,cv3,cv4,cv5,cv6]);
        end
    end
    set(handles.uitable7,'Data', po);
    ww=[];
    for i=1:aa1
        for j=1:aa1
            
            ww=[ww;  cell2mat(po(i,j))];
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
        po1(i,1)=cellstr(we);
        ww=[];
    end
    set(handles.uitable9,'Data', po1);
    zxwq=["X+","X-","Y+","Y-","Z+","Z-"];
    zxwq1=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
    Aop1=po1;
    Aop=po;
    n=aa1;
    sa=zxwq1(1:n);
    sa1=sa;
    [mm,nn]=size(po1);
    po2=cell2mat(po1);
    [w1,w2]=find(po2=='0');
    [w3,w4]=size(w1);
    XXXXX=[];
    XXXXX1=[];
    W=[];
    W1=[];
    for i=1:w3
        W1={[sa(w1(i));zxwq(w2(i))]};%第1层
        sa(w1(i))=[];
        W=[W,{sa}];
        Aop(w1(i),:)=[];
        Aop( :,w1(i))=[];
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
        end
        po4=cell2mat(po3);
        [w11,w22]=find(po4=='0');
        if isempty(w22)==1
            break;
        end
        [w3,w4]=size(w11);
        
        [WWWW1,VVVV1,MMMM1,PPPP1]=muco(w3,w11,w22,zxwq,W, W1,sa,Aop,sa,Aop);%第2层
        [k1,k2]=size(WWWW1);
        
        for iq=1:k2
            AAOP=WWWW1{1, iq};
            AW=VVVV1{1, iq};
            [AAOP1]=comc1(AAOP);
            po2=cell2mat(AAOP1);
            [w12,w23]=find(po2=='0');
            if isempty(w23)==1
                break;
            end
            if isempty(w23)==1
                break;
            end
            [w3,w4]=size(w12);
            [WWWW2,VVVV2,MMMM2,PPPP2]=muco(w3,w12,w23,zxwq,AW, {PPPP1{2, iq}} ,AW,AAOP,AW,AAOP);%第3层
            [k1,k2]=size(WWWW2);
            for iq1=1:k2
                AAOPp=WWWW2{1, iq1};
                AW=VVVV2{1, iq1};
                [AAOP1]=comc1(AAOPp);
                po2=cell2mat(AAOP1);
                [w112,w223]=find(po2=='0');
                [w3,w4]=size(w112);
                [WWWW3,VVVV3,MMMM3,PPPP3]=muco(w3,w112,w223,zxwq,AW, {PPPP2{2, iq1}},AW,AAOPp,AW,AAOPp);%第4层
                [k1,k2]=size(WWWW3);
                for iq2=1:k2
                    AAOPp1=WWWW3{1, iq2};
                    AW1=VVVV3{1, iq2};
                    [AAOP1]=comc1(AAOPp1);
                    po2=cell2mat(AAOP1);
                    [w112,w223]=find(po2=='0');
                    if isempty(w223)==1
                        break;
                    end
                    [w3,w4]=size(w112);
                    [WWWW4,VVVV4,MMMM4,PPPP4]=muco(w3,w112,w223,zxwq,AW1, {PPPP3{2, iq2}},AW1,AAOPp1,AW1,AAOPp1);%第5层
                    %第 7维度
                    asas=size(WWWW4{1, 1});
                    if asas>=2
                        [k1,k2]=size(WWWW4);
                        for iq4=1:k2
                            AAOPp1=WWWW4{1, iq4};
                            AW1=VVVV4{1, iq4};
                            [AAOP1]=comc1(AAOPp1);
                            po2=cell2mat(AAOP1);
                            [w117,w223]=find(po2=='0');
                            if isempty(w223)==1
                                break;
                            end
                            [w3,w4]=size(w117);
                            [WWWW5,VVVV5,MMMM5,PPPP5]=muco(w3,w117,w223,zxwq,AW1, {PPPP4{2, iq4}},AW1,AAOPp1,AW1,AAOPp1);%第6层
                            asas=size(WWWW5{1, 1});%第8维度
                            if asas>=2
                                [k1,k2]=size(WWWW5);
                                for iq6=1:k2
                                    AAOPp1=WWWW5{1, iq6};
                                    AW1=VVVV5{1, iq6};
                                    [AAOP1]=comc1(AAOPp1);
                                    po2=cell2mat(AAOP1);
                                    [w118,w223]=find(po2=='0');
                                    if isempty(w223)==1
                                        break;
                                    end
                                    [w3,w4]=size(w118);
                                    [WWWW6,VVVV6,MMMM6,PPPP6]=muco(w3,w118,w223,zxwq,AW1, {PPPP5{2, iq6}},AW1,AAOPp1,AW1,AAOPp1);%第7层
                                    
                                    %第 9维度
                                    asas=size(WWWW6{1, 1});
                                    if asas>=2
                                        [k1,k2]=size(WWWW6);
                                        for iq8=1:k2
                                            AAOPp1=WWWW6{1, iq8};
                                            AW1=VVVV6{1, iq8};
                                            [AAOP1]=comc1(AAOPp1);
                                            po2=cell2mat(AAOP1);
                                            [w119,w223]=find(po2=='0');
                                            if isempty(w223)==1
                                                break;
                                            end
                                            [w3,w4]=size(w119);
                                            [WWWW7,VVVV7,MMMM7,PPPP7]=muco(w3,w119,w223,zxwq,AW1, {PPPP6{2, iq8}},AW1,AAOPp1,AW1,AAOPp1);%第8层
                                            
                                            %第10维度
                                            asas=size(WWWW7{1, 1});
                                            if asas>=2
                                                [k1,k2]=size(WWWW7);
                                                for iq10=1:k2
                                                    AAOPp1=WWWW7{1, iq10};
                                                    AW1=VVVV7{1, iq10};
                                                    [AAOP1]=comc1(AAOPp1);
                                                    po2=cell2mat(AAOP1);
                                                    [w120,w223]=find(po2=='0');
                                                    if isempty(w223)==1
                                                        break;
                                                    end
                                                    [w3,w4]=size(w120);
                                                    [WWWW8,VVVV8,MMMM8,PPPP8]=muco(w3,w120,w223,zxwq,AW1, {PPPP7{2, iq10}},AW1,AAOPp1,AW1,AAOPp1);%第9层
                                                    %第 11维度
                                                    asas=size(WWWW8{1, 1});
                                                    if asas>=2
                                                        [k1,k2]=size(WWWW8);
                                                        for iq13=1:k2
                                                            AAOPp1=WWWW8{1, iq13};
                                                            AW1=VVVV8{1, iq13};
                                                            [AAOP1]=comc1(AAOPp1);
                                                            po2=cell2mat(AAOP1);
                                                            [w121,w223]=find(po2=='0');
                                                            if isempty(w223)==1
                                                                break;
                                                            end
                                                            [w3,w4]=size(w121);
                                                            [WWWW9,VVVV9,MMMM9,PPPP9]=muco(w3,w121,w223,zxwq,AW1, {PPPP8{2, iq13}},AW1,AAOPp1,AW1,AAOPp1);%第10层
                                                            %第 12维度
                                                            asas=size(WWWW9{1, 1});
                                                            if asas>=2
                                                                [k1,k2]=size(WWWW9);
                                                                for iq14=1:k2
                                                                    AAOPp1=WWWW9{1, iq14};
                                                                    AW1=VVVV9{1, iq14};
                                                                    [AAOP1]=comc1(AAOPp1);
                                                                    po2=cell2mat(AAOP1);
                                                                    [w122,w223]=find(po2=='0');
                                                                    if isempty(w223)==1
                                                                        break;
                                                                    end
                                                                    [w3,w4]=size(w122);
                                                                    [WWWW10,VVVV10,MMMM10,PPPP10]=muco(w3,w122,w223,zxwq,AW1, {PPPP9{2, iq14}},AW1,AAOPp1,AW1,AAOPp1);%第11层
                                                                    %第 13维度
                                                                    asas=size(WWWW10{1, 1});
                                                                    if asas>=2
                                                                        [k1,k2]=size(WWWW10);
                                                                        for iq15=1:k2
                                                                            AAOPp1=WWWW10{1, iq15};
                                                                            AW1=VVVV10{1, iq15};
                                                                            [AAOP1]=comc1(AAOPp1);
                                                                            po2=cell2mat(AAOP1);
                                                                            [w123,w223]=find(po2=='0');
                                                                            if isempty(w223)==1
                                                                                break;
                                                                            end
                                                                            [w3,w4]=size(w123);
                                                                            [WWWW11,VVVV11,MMMM11,PPPP11]=muco(w3,w123,w223,zxwq,AW1, {PPPP10{2, iq15}},AW1,AAOPp1,AW1,AAOPp1);%第12层
                                                                            
                                                                            %第 14维度
                                                                            asas=size(WWWW11{1, 1});
                                                                            if asas>=2
                                                                                [k1,k2]=size(WWWW11);
                                                                                for iq17=1:k2
                                                                                    AAOPp1=WWWW11{1, iq17};
                                                                                    AW1=VVVV11{1, iq17};
                                                                                    [AAOP1]=comc1(AAOPp1);
                                                                                    po2=cell2mat(AAOP1);
                                                                                    [w124,w223]=find(po2=='0');
                                                                                    if isempty(w223)==1
                                                                                        break;
                                                                                    end
                                                                                    [w3,w4]=size(w124);
                                                                                    [WWWW12,VVVV12,MMMM12,PPPP12]=muco(w3,w124,w223,zxwq,AW1, {PPPP11{2, iq17}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                    
                                                                                    %第 15维度
                                                                                    asas=size(WWWW12{1, 1});
                                                                                    if asas>=2
                                                                                        [k1,k2]=size(WWWW12);
                                                                                        for iq19=1:k2
                                                                                            AAOPp1=WWWW12{1, iq19};
                                                                                            AW1=VVVV12{1, iq19};
                                                                                            [AAOP1]=comc1(AAOPp1);
                                                                                            po2=cell2mat(AAOP1);
                                                                                            [w125,w223]=find(po2=='0');
                                                                                            if isempty(w223)==1
                                                                                                break;
                                                                                            end
                                                                                            [w3,w4]=size(w125);
                                                                                            [WWWW13,VVVV13,MMMM13,PPPP13]=muco(w3,w125,w223,zxwq,AW1, {PPPP12{2, iq19}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                            %第 16维度
                                                                                            asas=size(WWWW13{1, 1});
                                                                                            if asas>=2
                                                                                                [k1,k2]=size(WWWW13);
                                                                                                for iq21=1:k2
                                                                                                    AAOPp1=WWWW13{1, iq21};
                                                                                                    AW1=VVVV13{1, iq21};
                                                                                                    [AAOP1]=comc1(AAOPp1);
                                                                                                    po2=cell2mat(AAOP1);
                                                                                                    [w126,w223]=find(po2=='0');
                                                                                                    if isempty(w223)==1
                                                                                                        break;
                                                                                                    end
                                                                                                    [w3,w4]=size(w126);
                                                                                                    [WWWW14,VVVV14,MMMM14,PPPP14]=muco(w3,w126,w223,zxwq,AW1, {PPPP13{2, iq21}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                    
                                                                                                    %第 17维度
                                                                                                    asas=size(WWWW14{1, 1});
                                                                                                    if asas>=2
                                                                                                        [k1,k2]=size(WWWW14);
                                                                                                        for iq23=1:k2
                                                                                                            AAOPp1=WWWW14{1, iq23};
                                                                                                            AW1=VVVV14{1, iq23};
                                                                                                            [AAOP1]=comc1(AAOPp1);
                                                                                                            po2=cell2mat(AAOP1);
                                                                                                            [w127,w223]=find(po2=='0');
                                                                                                            if isempty(w223)==1
                                                                                                                break;
                                                                                                            end
                                                                                                            [w3,w4]=size(w127);
                                                                                                            [WWWW15,VVVV15,MMMM15,PPPP15]=muco(w3,w127,w223,zxwq,AW1, {PPPP14{2, iq23}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                            %第 18维度
                                                                                                            asas=size(WWWW15{1, 1});
                                                                                                            if asas>=2
                                                                                                                [k1,k2]=size(WWWW15);
                                                                                                                for iq25=1:k2
                                                                                                                    AAOPp1=WWWW15{1, iq25};
                                                                                                                    AW1=VVVV15{1, iq25};
                                                                                                                    [AAOP1]=comc1(AAOPp1);
                                                                                                                    po2=cell2mat(AAOP1);
                                                                                                                    [w128,w223]=find(po2=='0');
                                                                                                                    if isempty(w223)==1
                                                                                                                        break;
                                                                                                                    end
                                                                                                                    [w3,w4]=size(w128);
                                                                                                                    [WWWW16,VVVV16,MMMM16,PPPP16]=muco(w3,w128,w223,zxwq,AW1, {PPPP15{2, iq25}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                    %第 19维度
                                                                                                                    asas=size(WWWW16{1, 1});
                                                                                                                    if asas>=2
                                                                                                                        [k1,k2]=size(WWWW16);
                                                                                                                        for iq27=1:k2
                                                                                                                            AAOPp1=WWWW16{1, iq27};
                                                                                                                            AW1=VVVV16{1, iq27};
                                                                                                                            [AAOP1]=comc1(AAOPp1);
                                                                                                                            po2=cell2mat(AAOP1);
                                                                                                                            [w129,w223]=find(po2=='0');
                                                                                                                            if isempty(w223)==1
                                                                                                                                break;
                                                                                                                            end
                                                                                                                            [w3,w4]=size(w129);
                                                                                                                            [WWWW17,VVVV17,MMMM17,PPPP17]=muco(w3,w129,w223,zxwq,AW1, {PPPP16{2, iq27}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                            %第 20维度
                                                                                                                            asas=size(WWWW17{1, 1});
                                                                                                                            if asas>=2
                                                                                                                                [k1,k2]=size(WWWW17);
                                                                                                                                for iq29=1:k2
                                                                                                                                    AAOPp1=WWWW17{1, iq29};
                                                                                                                                    AW1=VVVV17{1, iq29};
                                                                                                                                    [AAOP1]=comc1(AAOPp1);
                                                                                                                                    po2=cell2mat(AAOP1);
                                                                                                                                    [w130,w223]=find(po2=='0');
                                                                                                                                    if isempty(w223)==1
                                                                                                                                        break;
                                                                                                                                    end
                                                                                                                                    [w3,w4]=size(w130);
                                                                                                                                    [WWWW18,VVVV18,MMMM18,PPPP18]=muco(w3,w130,w223,zxwq,AW1, {PPPP17{2, iq29}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                                    %第 21维度
                                                                                                                                    asas=size(WWWW18{1, 1});
                                                                                                                                    if asas>=2
                                                                                                                                        [k1,k2]=size(WWWW18);
                                                                                                                                        for iq31=1:k2
                                                                                                                                            AAOPp1=WWWW18{1, iq31};
                                                                                                                                            AW1=VVVV18{1, iq31};
                                                                                                                                            [AAOP1]=comc1(AAOPp1);
                                                                                                                                            po2=cell2mat(AAOP1);
                                                                                                                                            [w130,w223]=find(po2=='0');
                                                                                                                                            if isempty(w223)==1
                                                                                                                                                break;
                                                                                                                                            end
                                                                                                                                            [w3,w4]=size(w130);
                                                                                                                                            [WWWW19,VVVV19,MMMM19,PPPP19]=muco(w3,w130,w223,zxwq,AW1, {PPPP18{2, iq31}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                                            %第 22维度
                                                                                                                                            asas=size(WWWW19{1, 1});
                                                                                                                                            if asas>=2
                                                                                                                                                [k1,k2]=size(WWWW19);
                                                                                                                                                for iq33=1:k2
                                                                                                                                                    AAOPp1=WWWW19{1, iq33};
                                                                                                                                                    AW1=VVVV19{1, iq33};
                                                                                                                                                    [AAOP1]=comc1(AAOPp1);
                                                                                                                                                    po2=cell2mat(AAOP1);
                                                                                                                                                    [w130,w223]=find(po2=='0');
                                                                                                                                                    if isempty(w223)==1
                                                                                                                                                        break;
                                                                                                                                                    end
                                                                                                                                                    [w3,w4]=size(w130);
                                                                                                                                                    [WWWW20,VVVV20,MMMM20,PPPP20]=muco(w3,w130,w223,zxwq,AW1, {PPPP19{2, iq33}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                                                    %第 23维度
                                                                                                                                                    asas=size(WWWW20{1, 1});
                                                                                                                                                    if asas>=2
                                                                                                                                                        [k1,k2]=size(WWWW20);
                                                                                                                                                        for iq35=1:k2
                                                                                                                                                            AAOPp1=WWWW20{1, iq35};
                                                                                                                                                            AW1=VVVV20{1, iq35};
                                                                                                                                                            [AAOP1]=comc1(AAOPp1);
                                                                                                                                                            po2=cell2mat(AAOP1);
                                                                                                                                                            [w130,w223]=find(po2=='0');
                                                                                                                                                            if isempty(w223)==1
                                                                                                                                                                break;
                                                                                                                                                            end
                                                                                                                                                            [w3,w4]=size(w130);
                                                                                                                                                            [WWWW21,VVVV21,MMMM21,PPPP21]=muco(w3,w130,w223,zxwq,AW1, {PPPP20{2, iq35}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                                                            %第 24维度
                                                                                                                                                            asas=size(WWWW21{1, 1});
                                                                                                                                                            if asas>=2
                                                                                                                                                                [k1,k2]=size(WWWW21);
                                                                                                                                                                for iq37=1:k2
                                                                                                                                                                    AAOPp1=WWWW21{1, iq37};
                                                                                                                                                                    AW1=VVVV21{1, iq37};
                                                                                                                                                                    [AAOP1]=comc1(AAOPp1);
                                                                                                                                                                    po2=cell2mat(AAOP1);
                                                                                                                                                                    [w130,w223]=find(po2=='0');
                                                                                                                                                                    if isempty(w223)==1
                                                                                                                                                                        break;
                                                                                                                                                                    end
                                                                                                                                                                    [w3,w4]=size(w130);
                                                                                                                                                                    [WWWW22,VVVV22,MMMM22,PPPP22]=muco(w3,w130,w223,zxwq,AW1, {PPPP21{2, iq37}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                                                                    %第 25维度
                                                                                                                                                                    asas=size(WWWW22{1, 1});
                                                                                                                                                                    if asas>=2
                                                                                                                                                                        [k1,k2]=size(WWWW22);
                                                                                                                                                                        for iq39=1:k2
                                                                                                                                                                            AAOPp1=WWWW22{1, iq39};
                                                                                                                                                                            AW1=VVVV22{1, iq39};
                                                                                                                                                                            [AAOP1]=comc1(AAOPp1);
                                                                                                                                                                            po2=cell2mat(AAOP1);
                                                                                                                                                                            [w130,w223]=find(po2=='0');
                                                                                                                                                                            if isempty(w223)==1
                                                                                                                                                                                break;
                                                                                                                                                                            end
                                                                                                                                                                            [w3,w4]=size(w130);
                                                                                                                                                                            [WWWW23,VVVV23,MMMM23,PPPP23]=muco(w3,w130,w223,zxwq,AW1, {PPPP22{2, iq39}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                                                                            %第 26维度
                                                                                                                                                                            asas=size(WWWW23{1, 1});
                                                                                                                                                                            if asas>=2
                                                                                                                                                                                [k1,k2]=size(WWWW23);
                                                                                                                                                                                for iq41=1:k2
                                                                                                                                                                                    AAOPp1=WWWW23{1, iq41};
                                                                                                                                                                                    AW1=VVVV23{1, iq41};
                                                                                                                                                                                    [AAOP1]=comc1(AAOPp1);
                                                                                                                                                                                    po2=cell2mat(AAOP1);
                                                                                                                                                                                    [w130,w223]=find(po2=='0');
                                                                                                                                                                                    if isempty(w223)==1
                                                                                                                                                                                        break;
                                                                                                                                                                                    end
                                                                                                                                                                                    [w3,w4]=size(w130);
                                                                                                                                                                                    [WWWW24,VVVV24,MMMM24,PPPP24]=muco(w3,w130,w223,zxwq,AW1, {PPPP23{2, iq41}},AW1,AAOPp1,AW1,AAOPp1);
                                                                                                                                                                                    aaaa1=PPPP1(1,iq);
                                                                                                                                                                                    aaaa2=PPPP1(2,iq);
                                                                                                                                                                                    aaaa3=PPPP2(2,iq1);
                                                                                                                                                                                    aaaa4=PPPP3(2,iq2);
                                                                                                                                                                                    aaaa5=PPPP4(2,iq4);
                                                                                                                                                                                    aaaa6=PPPP5(2,iq6);
                                                                                                                                                                                    aaaa7=PPPP6(2,iq8);
                                                                                                                                                                                    aaaa8=PPPP7(2,iq10);
                                                                                                                                                                                    aaaa9=PPPP8(2,iq13);
                                                                                                                                                                                    aaaa10=PPPP9(2,iq14);
                                                                                                                                                                                    aaaa11=PPPP10(2,iq15);
                                                                                                                                                                                    aaaa12=PPPP11(2,iq17);
                                                                                                                                                                                    aaaa13=PPPP12(2,iq19);
                                                                                                                                                                                    aaaa14=PPPP13(2,iq21);
                                                                                                                                                                                    aaaa15=PPPP14(2,iq23);
                                                                                                                                                                                    aaaa16=PPPP15(2,iq25);
                                                                                                                                                                                    aaaa17=PPPP16(2,iq27);
                                                                                                                                                                                    aaaa18=PPPP17(2,iq29);
                                                                                                                                                                                    aaaa19=PPPP18(2,iq31);
                                                                                                                                                                                    aaaa20=PPPP19(2,iq33);
                                                                                                                                                                                    aaaa21=PPPP20(2,iq35);
                                                                                                                                                                                    aaaa22=PPPP21(2,iq37);
                                                                                                                                                                                    aaaa23=PPPP22(2,iq39);
                                                                                                                                                                                    aaaa24=PPPP23(2,iq41);
                                                                                                                                                                                    [mm,nn]=size(WWWW23);
                                                                                                                                                                                    for iq42=1:nn
                                                                                                                                                                                        aaaa25=PPPP24(2,iq42);
                                                                                                                                                                                        XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1},aaaa18{1,1},aaaa19{1,1},aaaa20{1,1},aaaa21{1,1},aaaa22{1,1},aaaa23{1,1},aaaa24{1,1},aaaa25{1,1}];
                                                                                                                                                                                        aui=cellstr(XXXXX);
                                                                                                                                                                                        XXXXX1=[XXXXX1;aui];
                                                                                                                                                                                        set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                                                                                    end
                                                                                                                                                                                    
                                                                                                                                                                                end
                                                                                                                                                                            else
                                                                                                                                                                                aaaa1=PPPP1(1,iq);
                                                                                                                                                                                aaaa2=PPPP1(2,iq);
                                                                                                                                                                                aaaa3=PPPP2(2,iq1);
                                                                                                                                                                                aaaa4=PPPP3(2,iq2);
                                                                                                                                                                                aaaa5=PPPP4(2,iq4);
                                                                                                                                                                                aaaa6=PPPP5(2,iq6);
                                                                                                                                                                                aaaa7=PPPP6(2,iq8);
                                                                                                                                                                                aaaa8=PPPP7(2,iq10);
                                                                                                                                                                                aaaa9=PPPP8(2,iq13);
                                                                                                                                                                                aaaa10=PPPP9(2,iq14);
                                                                                                                                                                                aaaa11=PPPP10(2,iq15);
                                                                                                                                                                                aaaa12=PPPP11(2,iq17);
                                                                                                                                                                                aaaa13=PPPP12(2,iq19);
                                                                                                                                                                                aaaa14=PPPP13(2,iq21);
                                                                                                                                                                                aaaa15=PPPP14(2,iq23);
                                                                                                                                                                                aaaa16=PPPP15(2,iq25);
                                                                                                                                                                                aaaa17=PPPP16(2,iq27);
                                                                                                                                                                                aaaa18=PPPP17(2,iq29);
                                                                                                                                                                                aaaa19=PPPP18(2,iq31);
                                                                                                                                                                                aaaa20=PPPP19(2,iq33);
                                                                                                                                                                                aaaa21=PPPP20(2,iq35);
                                                                                                                                                                                aaaa22=PPPP21(2,iq37);
                                                                                                                                                                                aaaa23=PPPP22(2,iq39);
                                                                                                                                                                                [mm,nn]=size(WWWW23);
                                                                                                                                                                                for iq40=1:nn
                                                                                                                                                                                    aaaa24=PPPP23(2,iq40);
                                                                                                                                                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1},aaaa18{1,1},aaaa19{1,1},aaaa20{1,1},aaaa21{1,1},aaaa22{1,1},aaaa23{1,1},aaaa24{1,1}];
                                                                                                                                                                                    aui=cellstr(XXXXX);
                                                                                                                                                                                    XXXXX1=[XXXXX1;aui];
                                                                                                                                                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                                                                                end
                                                                                                                                                                                
                                                                                                                                                                            end
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        aaaa1=PPPP1(1,iq);
                                                                                                                                                                        aaaa2=PPPP1(2,iq);
                                                                                                                                                                        aaaa3=PPPP2(2,iq1);
                                                                                                                                                                        aaaa4=PPPP3(2,iq2);
                                                                                                                                                                        aaaa5=PPPP4(2,iq4);
                                                                                                                                                                        aaaa6=PPPP5(2,iq6);
                                                                                                                                                                        aaaa7=PPPP6(2,iq8);
                                                                                                                                                                        aaaa8=PPPP7(2,iq10);
                                                                                                                                                                        aaaa9=PPPP8(2,iq13);
                                                                                                                                                                        aaaa10=PPPP9(2,iq14);
                                                                                                                                                                        aaaa11=PPPP10(2,iq15);
                                                                                                                                                                        aaaa12=PPPP11(2,iq17);
                                                                                                                                                                        aaaa13=PPPP12(2,iq19);
                                                                                                                                                                        aaaa14=PPPP13(2,iq21);
                                                                                                                                                                        aaaa15=PPPP14(2,iq23);
                                                                                                                                                                        aaaa16=PPPP15(2,iq25);
                                                                                                                                                                        aaaa17=PPPP16(2,iq27);
                                                                                                                                                                        aaaa18=PPPP17(2,iq29);
                                                                                                                                                                        aaaa19=PPPP18(2,iq31);
                                                                                                                                                                        aaaa20=PPPP19(2,iq33);
                                                                                                                                                                        aaaa21=PPPP20(2,iq35);
                                                                                                                                                                        aaaa22=PPPP21(2,iq37);
                                                                                                                                                                        [mm,nn]=size(WWWW22);
                                                                                                                                                                        for iq38=1:nn
                                                                                                                                                                            aaaa23=PPPP22(2,iq38);
                                                                                                                                                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1},aaaa18{1,1},aaaa19{1,1},aaaa20{1,1},aaaa21{1,1},aaaa22{1,1},aaaa23{1,1}];
                                                                                                                                                                            aui=cellstr(XXXXX);
                                                                                                                                                                            XXXXX1=[XXXXX1;aui];
                                                                                                                                                                            set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                                                                        end
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                    end
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                aaaa1=PPPP1(1,iq);
                                                                                                                                                                aaaa2=PPPP1(2,iq);
                                                                                                                                                                aaaa3=PPPP2(2,iq1);
                                                                                                                                                                aaaa4=PPPP3(2,iq2);
                                                                                                                                                                aaaa5=PPPP4(2,iq4);
                                                                                                                                                                aaaa6=PPPP5(2,iq6);
                                                                                                                                                                aaaa7=PPPP6(2,iq8);
                                                                                                                                                                aaaa8=PPPP7(2,iq10);
                                                                                                                                                                aaaa9=PPPP8(2,iq13);
                                                                                                                                                                aaaa10=PPPP9(2,iq14);
                                                                                                                                                                aaaa11=PPPP10(2,iq15);
                                                                                                                                                                aaaa12=PPPP11(2,iq17);
                                                                                                                                                                aaaa13=PPPP12(2,iq19);
                                                                                                                                                                aaaa14=PPPP13(2,iq21);
                                                                                                                                                                aaaa15=PPPP14(2,iq23);
                                                                                                                                                                aaaa16=PPPP15(2,iq25);
                                                                                                                                                                aaaa17=PPPP16(2,iq27);
                                                                                                                                                                aaaa18=PPPP17(2,iq29);
                                                                                                                                                                aaaa19=PPPP18(2,iq31);
                                                                                                                                                                aaaa20=PPPP19(2,iq33);
                                                                                                                                                                aaaa21=PPPP20(2,iq35);
                                                                                                                                                                [mm,nn]=size(WWWW21);
                                                                                                                                                                for iq36=1:nn
                                                                                                                                                                    aaaa22=PPPP21(2,iq36);
                                                                                                                                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1},aaaa18{1,1},aaaa19{1,1},aaaa20{1,1},aaaa21{1,1},aaaa22{1,1}];
                                                                                                                                                                    aui=cellstr(XXXXX);
                                                                                                                                                                    XXXXX1=[XXXXX1;aui];
                                                                                                                                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                                                                end
                                                                                                                                                            end
                                                                                                                                                            
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        aaaa1=PPPP1(1,iq);
                                                                                                                                                        aaaa2=PPPP1(2,iq);
                                                                                                                                                        aaaa3=PPPP2(2,iq1);
                                                                                                                                                        aaaa4=PPPP3(2,iq2);
                                                                                                                                                        aaaa5=PPPP4(2,iq4);
                                                                                                                                                        aaaa6=PPPP5(2,iq6);
                                                                                                                                                        aaaa7=PPPP6(2,iq8);
                                                                                                                                                        aaaa8=PPPP7(2,iq10);
                                                                                                                                                        aaaa9=PPPP8(2,iq13);
                                                                                                                                                        aaaa10=PPPP9(2,iq14);
                                                                                                                                                        aaaa11=PPPP10(2,iq15);
                                                                                                                                                        aaaa12=PPPP11(2,iq17);
                                                                                                                                                        aaaa13=PPPP12(2,iq19);
                                                                                                                                                        aaaa14=PPPP13(2,iq21);
                                                                                                                                                        aaaa15=PPPP14(2,iq23);
                                                                                                                                                        aaaa16=PPPP15(2,iq25);
                                                                                                                                                        aaaa17=PPPP16(2,iq27);
                                                                                                                                                        aaaa18=PPPP17(2,iq29);
                                                                                                                                                        aaaa19=PPPP18(2,iq31);
                                                                                                                                                        aaaa20=PPPP19(2,iq33);
                                                                                                                                                        [mm,nn]=size(WWWW19);
                                                                                                                                                        for iq34=1:nn
                                                                                                                                                            aaaa21=PPPP20(2,iq34);
                                                                                                                                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1},aaaa18{1,1},aaaa19{1,1},aaaa20{1,1},aaaa21{1,1}];
                                                                                                                                                            aui=cellstr(XXXXX);
                                                                                                                                                            XXXXX1=[XXXXX1;aui];
                                                                                                                                                            set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                                                        end
                                                                                                                                                    end
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                aaaa1=PPPP1(1,iq);
                                                                                                                                                aaaa2=PPPP1(2,iq);
                                                                                                                                                aaaa3=PPPP2(2,iq1);
                                                                                                                                                aaaa4=PPPP3(2,iq2);
                                                                                                                                                aaaa5=PPPP4(2,iq4);
                                                                                                                                                aaaa6=PPPP5(2,iq6);
                                                                                                                                                aaaa7=PPPP6(2,iq8);
                                                                                                                                                aaaa8=PPPP7(2,iq10);
                                                                                                                                                aaaa9=PPPP8(2,iq13);
                                                                                                                                                aaaa10=PPPP9(2,iq14);
                                                                                                                                                aaaa11=PPPP10(2,iq15);
                                                                                                                                                aaaa12=PPPP11(2,iq17);
                                                                                                                                                aaaa13=PPPP12(2,iq19);
                                                                                                                                                aaaa14=PPPP13(2,iq21);
                                                                                                                                                aaaa15=PPPP14(2,iq23);
                                                                                                                                                aaaa16=PPPP15(2,iq25);
                                                                                                                                                aaaa17=PPPP16(2,iq27);
                                                                                                                                                aaaa18=PPPP17(2,iq29);
                                                                                                                                                aaaa19=PPPP18(2,iq31);
                                                                                                                                                [mm,nn]=size(WWWW18);
                                                                                                                                                for iq32=1:nn
                                                                                                                                                    aaaa20=PPPP19(2,iq32);
                                                                                                                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1},aaaa18{1,1},aaaa19{1,1},aaaa20{1,1}];
                                                                                                                                                    aui=cellstr(XXXXX);
                                                                                                                                                    XXXXX1=[XXXXX1;aui];
                                                                                                                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                                                end
                                                                                                                                            end
                                                                                                                                            
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        
                                                                                                                                        aaaa1=PPPP1(1,iq);
                                                                                                                                        aaaa2=PPPP1(2,iq);
                                                                                                                                        aaaa3=PPPP2(2,iq1);
                                                                                                                                        aaaa4=PPPP3(2,iq2);
                                                                                                                                        aaaa5=PPPP4(2,iq4);
                                                                                                                                        aaaa6=PPPP5(2,iq6);
                                                                                                                                        aaaa7=PPPP6(2,iq8);
                                                                                                                                        aaaa8=PPPP7(2,iq10);
                                                                                                                                        aaaa9=PPPP8(2,iq13);
                                                                                                                                        aaaa10=PPPP9(2,iq14);
                                                                                                                                        aaaa11=PPPP10(2,iq15);
                                                                                                                                        aaaa12=PPPP11(2,iq17);
                                                                                                                                        aaaa13=PPPP12(2,iq19);
                                                                                                                                        aaaa14=PPPP13(2,iq21);
                                                                                                                                        aaaa15=PPPP14(2,iq23);
                                                                                                                                        aaaa16=PPPP15(2,iq25);
                                                                                                                                        aaaa17=PPPP16(2,iq27);
                                                                                                                                        aaaa18=PPPP17(2,iq29);
                                                                                                                                        [mm,nn]=size(WWWW18);
                                                                                                                                        for iq30=1:nn
                                                                                                                                            aaaa19=PPPP18(2,iq30);
                                                                                                                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1},aaaa18{1,1},aaaa19{1,1}];
                                                                                                                                            aui=cellstr(XXXXX);
                                                                                                                                            XXXXX1=[XXXXX1;aui];
                                                                                                                                            set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                                        end
                                                                                                                                    end
                                                                                                                                    
                                                                                                                                    
                                                                                                                                end
                                                                                                                            else
                                                                                                                                
                                                                                                                                
                                                                                                                                aaaa1=PPPP1(1,iq);
                                                                                                                                aaaa2=PPPP1(2,iq);
                                                                                                                                aaaa3=PPPP2(2,iq1);
                                                                                                                                aaaa4=PPPP3(2,iq2);
                                                                                                                                aaaa5=PPPP4(2,iq4);
                                                                                                                                aaaa6=PPPP5(2,iq6);
                                                                                                                                aaaa7=PPPP6(2,iq8);
                                                                                                                                aaaa8=PPPP7(2,iq10);
                                                                                                                                aaaa9=PPPP8(2,iq13);
                                                                                                                                aaaa10=PPPP9(2,iq14);
                                                                                                                                aaaa11=PPPP10(2,iq15);
                                                                                                                                aaaa12=PPPP11(2,iq17);
                                                                                                                                aaaa13=PPPP12(2,iq19);
                                                                                                                                aaaa14=PPPP13(2,iq21);
                                                                                                                                aaaa15=PPPP14(2,iq23);
                                                                                                                                aaaa16=PPPP15(2,iq25);
                                                                                                                                aaaa17=PPPP16(2,iq27);
                                                                                                                                [mm,nn]=size(WWWW17);
                                                                                                                                for iq28=1:nn
                                                                                                                                    aaaa18=PPPP17(2,iq28);
                                                                                                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1},aaaa18{1,1}];
                                                                                                                                    aui=cellstr(XXXXX);
                                                                                                                                    XXXXX1=[XXXXX1;aui];
                                                                                                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                                end
                                                                                                                                
                                                                                                                            end
                                                                                                                            
                                                                                                                            
                                                                                                                        end
                                                                                                                    else
                                                                                                                        aaaa1=PPPP1(1,iq);
                                                                                                                        aaaa2=PPPP1(2,iq);
                                                                                                                        aaaa3=PPPP2(2,iq1);
                                                                                                                        aaaa4=PPPP3(2,iq2);
                                                                                                                        aaaa5=PPPP4(2,iq4);
                                                                                                                        aaaa6=PPPP5(2,iq6);
                                                                                                                        aaaa7=PPPP6(2,iq8);
                                                                                                                        aaaa8=PPPP7(2,iq10);
                                                                                                                        aaaa9=PPPP8(2,iq13);
                                                                                                                        aaaa10=PPPP9(2,iq14);
                                                                                                                        aaaa11=PPPP10(2,iq15);
                                                                                                                        aaaa12=PPPP11(2,iq17);
                                                                                                                        aaaa13=PPPP12(2,iq19);
                                                                                                                        aaaa14=PPPP13(2,iq21);
                                                                                                                        aaaa15=PPPP14(2,iq23);
                                                                                                                        aaaa16=PPPP15(2,iq25);
                                                                                                                        [mm,nn]=size(WWWW16);
                                                                                                                        for iq26=1:nn
                                                                                                                            aaaa17=PPPP16(2,iq26);
                                                                                                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1},aaaa17{1,1}];
                                                                                                                            aui=cellstr(XXXXX);
                                                                                                                            XXXXX1=[XXXXX1;aui];
                                                                                                                            set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                        end
                                                                                                                        
                                                                                                                        
                                                                                                                    end
                                                                                                                    
                                                                                                                end
                                                                                                                
                                                                                                            else
                                                                                                                aaaa1=PPPP1(1,iq);
                                                                                                                aaaa2=PPPP1(2,iq);
                                                                                                                aaaa3=PPPP2(2,iq1);
                                                                                                                aaaa4=PPPP3(2,iq2);
                                                                                                                aaaa5=PPPP4(2,iq4);
                                                                                                                aaaa6=PPPP5(2,iq6);
                                                                                                                aaaa7=PPPP6(2,iq8);
                                                                                                                aaaa8=PPPP7(2,iq10);
                                                                                                                aaaa9=PPPP8(2,iq13);
                                                                                                                aaaa10=PPPP9(2,iq14);
                                                                                                                aaaa11=PPPP10(2,iq15);
                                                                                                                aaaa12=PPPP11(2,iq17);
                                                                                                                aaaa13=PPPP12(2,iq19);
                                                                                                                aaaa14=PPPP13(2,iq21);
                                                                                                                aaaa15=PPPP14(2,iq23);
                                                                                                                [mm,nn]=size(WWWW15);
                                                                                                                for iq24=1:nn
                                                                                                                    aaaa16=PPPP15(2,iq24);
                                                                                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1},aaaa16{1,1}];
                                                                                                                    aui=cellstr(XXXXX);
                                                                                                                    XXXXX1=[XXXXX1;aui];
                                                                                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    else
                                                                                                        
                                                                                                        aaaa1=PPPP1(1,iq);
                                                                                                        aaaa2=PPPP1(2,iq);
                                                                                                        aaaa3=PPPP2(2,iq1);
                                                                                                        aaaa4=PPPP3(2,iq2);
                                                                                                        aaaa5=PPPP4(2,iq4);
                                                                                                        aaaa6=PPPP5(2,iq6);
                                                                                                        aaaa7=PPPP6(2,iq8);
                                                                                                        aaaa8=PPPP7(2,iq10);
                                                                                                        aaaa9=PPPP8(2,iq13);
                                                                                                        aaaa10=PPPP9(2,iq14);
                                                                                                        aaaa11=PPPP10(2,iq15);
                                                                                                        aaaa12=PPPP11(2,iq17);
                                                                                                        aaaa13=PPPP12(2,iq19);
                                                                                                        aaaa14=PPPP13(2,iq21);
                                                                                                        [mm,nn]=size(WWWW14);
                                                                                                        for iq22=1:nn
                                                                                                            aaaa15=PPPP14(2,iq22);
                                                                                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1},aaaa15{1,1}];
                                                                                                            aui=cellstr(XXXXX);
                                                                                                            XXXXX1=[XXXXX1;aui];
                                                                                                            set(handles.uitable10,'Data',  XXXXX1);
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            else
                                                                                                aaaa1=PPPP1(1,iq);
                                                                                                aaaa2=PPPP1(2,iq);
                                                                                                aaaa3=PPPP2(2,iq1);
                                                                                                aaaa4=PPPP3(2,iq2);
                                                                                                aaaa5=PPPP4(2,iq4);
                                                                                                aaaa6=PPPP5(2,iq6);
                                                                                                aaaa7=PPPP6(2,iq8);
                                                                                                aaaa8=PPPP7(2,iq10);
                                                                                                aaaa9=PPPP8(2,iq13);
                                                                                                aaaa10=PPPP9(2,iq14);
                                                                                                aaaa11=PPPP10(2,iq15);
                                                                                                aaaa12=PPPP11(2,iq17);
                                                                                                aaaa13=PPPP12(2,iq19);
                                                                                                [mm,nn]=size(WWWW13);
                                                                                                for iq20=1:nn
                                                                                                    aaaa14=PPPP13(2,iq20);
                                                                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1},aaaa14{1,1}];
                                                                                                    aui=cellstr(XXXXX);
                                                                                                    XXXXX1=[XXXXX1;aui];
                                                                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    else
                                                                                        
                                                                                        aaaa1=PPPP1(1,iq);
                                                                                        aaaa2=PPPP1(2,iq);
                                                                                        aaaa3=PPPP2(2,iq1);
                                                                                        aaaa4=PPPP3(2,iq2);
                                                                                        aaaa5=PPPP4(2,iq4);
                                                                                        aaaa6=PPPP5(2,iq6);
                                                                                        aaaa7=PPPP6(2,iq8);
                                                                                        aaaa8=PPPP7(2,iq10);
                                                                                        aaaa9=PPPP8(2,iq13);
                                                                                        aaaa10=PPPP9(2,iq14);
                                                                                        aaaa11=PPPP10(2,iq15);
                                                                                        aaaa12=PPPP11(2,iq17);
                                                                                        [mm,nn]=size(WWWW12);
                                                                                        for iq18=1:nn
                                                                                            aaaa13=PPPP12(2,iq18);
                                                                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1},aaaa13{1,1}];
                                                                                            aui=cellstr(XXXXX);
                                                                                            XXXXX1=[XXXXX1;aui];
                                                                                            set(handles.uitable10,'Data',  XXXXX1);
                                                                                        end
                                                                                    end
                                                                                end
                                                                                
                                                                            else
                                                                                
                                                                                aaaa1=PPPP1(1,iq);
                                                                                aaaa2=PPPP1(2,iq);
                                                                                aaaa3=PPPP2(2,iq1);
                                                                                aaaa4=PPPP3(2,iq2);
                                                                                aaaa5=PPPP4(2,iq4);
                                                                                aaaa6=PPPP5(2,iq6);
                                                                                aaaa7=PPPP6(2,iq8);
                                                                                aaaa8=PPPP7(2,iq10);
                                                                                aaaa9=PPPP8(2,iq13);
                                                                                aaaa10=PPPP9(2,iq14);
                                                                                aaaa11=PPPP10(2,iq15);
                                                                                [mm,nn]=size(WWWW11);
                                                                                for iq16=1:nn
                                                                                    aaaa12=PPPP11(2,iq16);
                                                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1},aaaa12{1,1}];
                                                                                    aui=cellstr(XXXXX);
                                                                                    XXXXX1=[XXXXX1;aui];
                                                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                                                end
                                                                            end
                                                                        end
                                                                        
                                                                    else
                                                                        aaaa1=PPPP1(1,iq);
                                                                        aaaa2=PPPP1(2,iq);
                                                                        aaaa3=PPPP2(2,iq1);
                                                                        aaaa4=PPPP3(2,iq2);
                                                                        aaaa5=PPPP4(2,iq4);
                                                                        aaaa6=PPPP5(2,iq6);
                                                                        aaaa7=PPPP6(2,iq8);
                                                                        aaaa8=PPPP7(2,iq10);
                                                                        aaaa9=PPPP8(2,iq13);
                                                                        aaaa10=PPPP9(2,iq14);
                                                                        
                                                                        [mm,nn]=size(WWWW10);
                                                                        for iq16=1:nn
                                                                            aaaa11=PPPP10(2,iq16);
                                                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1},aaaa11{1,1}];
                                                                            aui=cellstr(XXXXX);
                                                                            XXXXX1=[XXXXX1;aui];
                                                                            set(handles.uitable10,'Data',  XXXXX1);
                                                                        end
                                                                        
                                                                        
                                                                    end
                                                                end
                                                            else
                                                                aaaa1=PPPP1(1,iq);
                                                                aaaa2=PPPP1(2,iq);
                                                                aaaa3=PPPP2(2,iq1);
                                                                aaaa4=PPPP3(2,iq2);
                                                                aaaa5=PPPP4(2,iq4);
                                                                aaaa6=PPPP5(2,iq6);
                                                                aaaa7=PPPP6(2,iq8);
                                                                aaaa8=PPPP7(2,iq10);
                                                                aaaa9=PPPP8(2,iq13);
                                                                [mm,nn]=size(WWWW9);
                                                                for iq12=1:nn
                                                                    aaaa10=PPPP9(2,iq12);
                                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1},aaaa10{1,1}];
                                                                    aui=cellstr(XXXXX);
                                                                    XXXXX1=[XXXXX1;aui];
                                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                                end
                                                            end
                                                        end
                                                    else
                                                        aaaa1=PPPP1(1,iq);
                                                        aaaa2=PPPP1(2,iq);
                                                        aaaa3=PPPP2(2,iq1);
                                                        aaaa4=PPPP3(2,iq2);
                                                        aaaa5=PPPP4(2,iq4);
                                                        aaaa6=PPPP5(2,iq6);
                                                        aaaa7=PPPP6(2,iq8);
                                                        aaaa8=PPPP7(2,iq10);
                                                        [mm,nn]=size(WWWW8);
                                                        for iq11=1:nn
                                                            aaaa9=PPPP8(2,iq11);
                                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1},aaaa9{1,1}];
                                                            aui=cellstr(XXXXX);
                                                            XXXXX1=[XXXXX1;aui];
                                                            set(handles.uitable10,'Data',  XXXXX1);
                                                        end
                                                        
                                                    end
                                                    
                                                end
                                            else
                                                aaaa1=PPPP1(1,iq);
                                                aaaa2=PPPP1(2,iq);
                                                aaaa3=PPPP2(2,iq1);
                                                aaaa4=PPPP3(2,iq2);
                                                aaaa5=PPPP4(2,iq4);
                                                aaaa6=PPPP5(2,iq6);
                                                aaaa7=PPPP6(2,iq8);
                                                [mm,nn]=size(WWWW7);
                                                for iq9=1:nn
                                                    aaaa8=PPPP7(2,iq9);
                                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1},aaaa8{1,1}];
                                                    aui=cellstr(XXXXX);
                                                    XXXXX1=[XXXXX1;aui];
                                                    set(handles.uitable10,'Data',  XXXXX1);
                                                end
                                            end
                                            
                                        end
                                    else
                                        aaaa1=PPPP1(1,iq);
                                        aaaa2=PPPP1(2,iq);
                                        aaaa3=PPPP2(2,iq1);
                                        aaaa4=PPPP3(2,iq2);
                                        aaaa5=PPPP4(2,iq4);
                                        aaaa6=PPPP5(2,iq6);
                                        [mm,nn]=size(WWWW6);
                                        for iq7=1:nn
                                            aaaa7=PPPP6(2,iq7);
                                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1},aaaa7{1,1}];
                                            aui=cellstr(XXXXX);
                                            XXXXX1=[XXXXX1;aui];
                                            set(handles.uitable10,'Data',  XXXXX1);
                                        end
                                        
                                    end
                                    
                                end
                            else
                                aaaa1=PPPP1(1,iq);
                                aaaa2=PPPP1(2,iq);
                                aaaa3=PPPP2(2,iq1);
                                aaaa4=PPPP3(2,iq2);
                                aaaa5=PPPP4(2,iq4);
                                [mm,nn]=size(WWWW5);
                                for iq5=1:nn
                                    aaaa6=PPPP5(2,iq5);
                                    XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1},aaaa6{1,1}];
                                    aui=cellstr(XXXXX);
                                    XXXXX1=[XXXXX1;aui];
                                    set(handles.uitable10,'Data',  XXXXX1);
                                end
                                
                            end
                        end
                    else
                        aaaa1=PPPP1(1,iq);
                        aaaa2=PPPP1(2,iq);
                        aaaa3=PPPP2(2,iq1);
                        aaaa4=PPPP3(2,iq2);
                        [mm,nn]=size(WWWW4);
                        for iq3=1:nn
                            aaaa5=PPPP4(2,iq3);
                            XXXXX=[ aaaa1{1,1}  ,aaaa2{1,1},aaaa3{1,1},aaaa4{1,1},aaaa5{1,1}];
                            aui=cellstr(XXXXX);
                            XXXXX1=[XXXXX1;aui];
                            set(handles.uitable10,'Data',  XXXXX1);
                        end
                        
                    end
                    
                end
                
            end
        end
        sa=sa1;
        Aop=po;
    end
    
    
    
elseif wb1==3
    %and
    for i=1:aa1
        for j=1:aa1
            cv1=num2str(www1(i,j));
            cv2=num2str(www2(i,j));
            cv3=num2str(www3(i,j));
            cv4=num2str(www4(i,j));
            cv5=num2str(www5(i,j));
            cv6=num2str(www6(i,j));
            po(i,j)=cellstr([cv1,cv2,cv3,cv4,cv5,cv6]);
        end
    end
    set(handles.uitable7,'Data', po);
    ww=[];
    for i=1:aa1
        for j=1:aa1
            
            ww=[ww;  cell2mat(po(i,j))];
        end
        [mm,nn]=size(ww);
        we='000000';
        for k1=1:nn
            wk=ww(:,k1);
            [mm1,nn1]=size(wk);
            if  all(wk=='1')
                we(k1)='1';
            end
        end
        po1(i,1)=cellstr(we);
        ww=[];
    end
    set(handles.uitable9,'Data', po1);
else
    msgbox('选择方式错误');
end



function edit12_Callback(hObject, eventdata, handles)
function edit12_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit13_Callback(hObject, eventdata, handles)
function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu8_Callback(hObject, eventdata, handles)
global www6;
global aa1;
aa2 = get(handles.edit12,'String');
aa2      = str2double(aa2);
aa3 = get(handles.edit13,'String');
aa3      = str2double(aa3);
ww11=get(handles.popupmenu8,'Value');
if aa1>=aa2&&aa1>=aa3
    
    if ww11==2
        www6(aa2,aa3)=0;
    elseif ww11==3
        www6(aa2,aa3)=1;
    end
    set(handles.uitable6,'Data', www6);
    msgbox('修改成功');
else
    msgbox('输入错误，请重新输入');
end
function popupmenu8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit10_Callback(hObject, eventdata, handles)
function edit10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit11_Callback(hObject, eventdata, handles)
function edit11_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu7_Callback(hObject, eventdata, handles)
global www5;
global aa1;
aa2 = get(handles.edit10,'String');
aa2      = str2double(aa2);
aa3 = get(handles.edit11,'String');
aa3      = str2double(aa3);
ww11=get(handles.popupmenu7,'Value');
if aa1>=aa2&&aa1>=aa3
    if ww11==2
        www5(aa2,aa3)=0;
    elseif ww11==3
        www5(aa2,aa3)=1;
    end
    set(handles.uitable5,'Data', www5);
    msgbox('修改成功');
else
    msgbox('输入错误，请重新输入');
end
function popupmenu7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit6_Callback(hObject, eventdata, handles)
function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit7_Callback(hObject, eventdata, handles)
function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu5_Callback(hObject, eventdata, handles)
global www3;
global aa1;
aa2 = get(handles.edit6,'String');
aa2      = str2double(aa2);
aa3 = get(handles.edit7,'String');
aa3      = str2double(aa3);
if aa1>=aa2&&aa1>=aa3
    
    ww11=get(handles.popupmenu5,'Value');
    
    if ww11==2
        www3(aa2,aa3)=0;
    elseif ww11==3
        www3(aa2,aa3)=1;
    end
    set(handles.uitable3,'Data', www3);
    msgbox('修改成功');
else
    msgbox('输入错误，请重新输入');
end
function popupmenu5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit4_Callback(hObject, eventdata, handles)
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit5_Callback(hObject, eventdata, handles)
function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu4_Callback(hObject, eventdata, handles)
global www2;
global aa1;
aa2 = get(handles.edit4,'String');
aa2      = str2double(aa2);
aa3 = get(handles.edit5,'String');
aa3      = str2double(aa3);
ww11=get(handles.popupmenu4,'Value');
if aa1>=aa2&&aa1>=aa3
    if ww11==2
        www2(aa2,aa3)=0;
    elseif ww11==3
        www2(aa2,aa3)=1;
    end
    set(handles.uitable2,'Data', www2);
    msgbox('修改成功');
else
    msgbox('输入错误，请重新输入');
end
function popupmenu4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit8_Callback(hObject, eventdata, handles)
function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit9_Callback(hObject, eventdata, handles)
function edit9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu6_Callback(hObject, eventdata, handles)
global www4;
global aa1;
aa2 = get(handles.edit8,'String');
aa2      = str2double(aa2);
aa3 = get(handles.edit9,'String');
aa3      = str2double(aa3);
ww11=get(handles.popupmenu6,'Value');
if aa1>=aa2&&aa1>=aa3
    
    if ww11==2
        www4(aa2,aa3)=0;
    elseif ww11==3
        www4(aa2,aa3)=1;
    end
    set(handles.uitable4,'Data', www4);
    msgbox('修改成功');
else
    msgbox('输入错误，请重新输入');
end
function popupmenu6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function popupmenu10_Callback(hObject, eventdata, handles)
global wb1;
wb=get(handles.popupmenu10,'Value');
if wb==2
    wb1=2;
elseif wb==3
    wb1=3;
else
    wb1=0;
end
function popupmenu10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
