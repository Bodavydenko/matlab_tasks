%% %Task1
tab=readtable("fileExcel.xlsx");
l=[string(tab.x___(string(tab.x____)=='Руководитель'))];
e=[string(tab.x___(string(tab.x____)=='Исполнитель'))];
writetable(table(["Роли";"Руководители";"Исполнители"],["Люди";sprintf("%s; ",l);sprintf("%s; ",e)]),"outFile.xlsx");
%% %Task2
tab=readtable("fileExcel.xlsx");
jobs=string(tab.x____);
r=[];
p=[];
for i=1:1:size(jobs)
    f=1;
    for j=1:1:(i-1)
        if jobs(i)==jobs(j)
            f=0;
            break;
        end
    end
    if f
       r=[r;jobs(i)];
       p=[p;sprintf("%s; ",[string(tab.x___(string(tab.x____)==jobs(i)))])];
    end
end
writetable(table(["Роли";r],["Люди";p]),"outFile.xlsx");
%% %Task3
tab=readtable("Data_18032020.xlsx");
tab.age=floor(etime(datevec(datetime(clock)),datevec(tab.x____________))/60/60/24/365);
tab.id1_11=strlength(string(tab.id1))==11;
tab.id2_11=strlength(string(tab.id2))==11;
k =tab.x_______________________./tab.x__________________;
tab.K=0.1.*ones(length(k),1);
tab.K(k>0.1)=0.2;
tab.K(k>0.2)=0.4;
tab.K(k>0.3)=0.6;
tab.K(k>0.4)=0.8;
tab.K(k>0.5)=1;
writetable(tab,"out.xlsx");