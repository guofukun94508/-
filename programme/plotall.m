load('C:\Users\Administrator\Documents\数据挖掘项目\dataset\SPSS处理后数据+预测值.mat');
%列向量反向排列
totaltotal=flipud(totaltotal);
totale=flipud(totale);
totalbm=flipud(totalbm);
ebm=flipud(ebm);
totalca=flipud(totalca);
eca=flipud(eca);
totalch=flipud(totalch);
ech=flipud(ech);
totalcs=flipud(totalcs);
ecs=flipud(ecs);
totaldhb=flipud(totaldhb);
edhb=flipud(edhb);
totalea=flipud(totalea);
eea=flipud(eea);
totalfbw=flipud(totalfbw);
efbw=flipud(efbw);
totalff=flipud(totalff);
eff=flipud(eff);
totalmv=flipud(totalmv);
emv=flipud(emv);
totaloes=flipud(totaloes);
eoes=flipud(eoes);
totalsg=flipud(totalsg);
esg=flipud(esg);
totalthg=flipud(totalthg);
ethg=flipud(ethg);
totalom=flipud(totalom);
eom=flipud(eom);
totalnr=flipud(totalnr);
enr=flipud(enr);
plot(totaltotal);hold all;plot(totalthg);plot(totalsg);plot(totalom);plot(totaloes);plot(totalnr);plot(totalmv);plot(totalff);plot(totalfbw);plot(totale);plot(totalea);plot(totaldhb);plot(totalcs);plot(totalch);plot(totalca);plot(ethg);plot(totalbm);plot(esg);plot(eom);plot(eoes);plot(enr);plot(emv);plot(eff);plot(efbw);plot(eea);plot(edhb);plot(ecs);plot(ech);plot(eca);plot(ebm);hold off;figure(gcf);