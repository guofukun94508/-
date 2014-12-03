load('C:\Users\Administrator\Documents\数据挖掘项目\dataset\commerce.mat')
%列向量全部转化为行向量并反向排列
totaltotal=fliplr(totaltotal');
totale=fliplr(totale');
totalbm=fliplr(totalbm');
ebm=fliplr(ebm');
totalca=fliplr(totalca');
eca=fliplr(eca');
totalch=fliplr(totalch');
ech=fliplr(ech');
totalcs=fliplr(totalcs');
ecs=fliplr(ecs');
totaldhb=fliplr(totaldhb');
edhb=fliplr(edhb');
totalea=fliplr(totalea');
eea=fliplr(eea');
totalfbw=fliplr(totalfbw');
efbw=fliplr(efbw');
totalff=fliplr(totalff');
eff=fliplr(eff');
totalmv=fliplr(totalmv');
emv=fliplr(emv');
totaloes=fliplr(totaloes');
eoes=fliplr(eoes');
totalsg=fliplr(totalsg');
esg=fliplr(esg');
totalthg=fliplr(totalthg');
ethg=fliplr(ethg');
totalom=fliplr(totalom');
eom=fliplr(eom');
totalnr=fliplr(totalnr');
enr=fliplr(enr');
%计算行向量的长度
ltotaltotal=length(totaltotal);
ltotale=length(totale);
ltotalbm=length(totalbm);
lebm=length(ebm);
ltotalca=length(totalca);
leca=length(eca);
ltotalch=length(totalch);
lech=length(ech);
ltotalcs=length(totalcs);
lecs=length(ecs);
ltotaldhb=length(totaldhb);
ledhb=length(edhb);
ltotalea=length(totalea);
leea=length(eea);
ltotalfbw=length(totalfbw);
lefbw=length(efbw);
ltotalff=length(totalff);
leff=length(eff);
ltotalmv=length(totalmv);
lemv=length(emv);
ltotaloes=length(totaloes);
leoes=length(eoes);
ltotalsg=length(totalsg);
lesg=length(esg);
ltotalthg=length(totalthg);
lethg=length(ethg);
ltotalom=length(totalom);
leom=length(eom);
ltotalnr=length(totalnr);
lenr=length(enr);
%利用每一项1997-2012年的数据进行2013年的预测
pretotaltotal=arrayfun(@(k)GM11(totaltotal(ltotaltotal-k:end)),2:13);
pretotale=arrayfun(@(k)GM11(totale(ltotale-k:end)),2:13);
pretotalbm=arrayfun(@(k)GM11(totalbm(ltotalbm-k:end)),2:13);
preebm=arrayfun(@(k)GM11(ebm(lebm-k:end)),2:13);
pretotalca=arrayfun(@(k)GM11(totalca(ltotalca-k:end)),2:13);
preeca=arrayfun(@(k)GM11(eca(leca-k:end)),2:13);
pretotalch=arrayfun(@(k)GM11(totalch(ltotalch-k:end)),2:13);
preech=arrayfun(@(k)GM11(ech(lech-k:end)),2:13);
pretotalcs=arrayfun(@(k)GM11(totalcs(ltotalcs-k:end)),2:13);
preecs=arrayfun(@(k)GM11(ecs(lecs-k:end)),2:13);
pretotaldhb=arrayfun(@(k)GM11(totaldhb(ltotaldhb-k:end)),2:13);
preedhb=arrayfun(@(k)GM11(edhb(ledhb-k:end)),2:13);
pretotalea=arrayfun(@(k)GM11(totalea(ltotalea-k:end)),2:13);
preeea=arrayfun(@(k)GM11(eea(leea-k:end)),2:13);
pretotalfbw=arrayfun(@(k)GM11(totalfbw(ltotalfbw-k:end)),2:13);
preefbw=arrayfun(@(k)GM11(efbw(lefbw-k:end)),2:13);
pretotalff=arrayfun(@(k)GM11(totalff(ltotalff-k:end)),2:13);
preeff=arrayfun(@(k)GM11(eff(leff-k:end)),2:13);
pretotalmv=arrayfun(@(k)GM11(totalmv(ltotalmv-k:end)),2:13);
preemv=arrayfun(@(k)GM11(emv(lemv-k:end)),2:13);
pretotaloes=arrayfun(@(k)GM11(totaloes(ltotaloes-k:end)),2:13);
preeoes=arrayfun(@(k)GM11(eoes(leoes-k:end)),2:13);
pretotalsg=arrayfun(@(k)GM11(totalsg(ltotalsg-k:end)),2:13);
preesg=arrayfun(@(k)GM11(esg(lesg-k:end)),2:13);
pretotalthg=arrayfun(@(k)GM11(totalthg(ltotalthg-k:end)),2:13);
preethg=arrayfun(@(k)GM11(ethg(lethg-k:end)),2:13);
pretotalom=arrayfun(@(k)GM11(totalom(ltotalom-k:end)),2:13);
preeom=arrayfun(@(k)GM11(eom(leom-k:end)),2:13);
pretotalnr=arrayfun(@(k)GM11(totalnr(ltotalnr-k:end)),2:13);
preenr=arrayfun(@(k)GM11(enr(lenr-k:end)),2:13);
%灰色融合预测
p1=DataFusionS(pretotaltotal);
p2=DataFusionS(pretotale);
p3=DataFusionS(pretotalbm);
p4=DataFusionS(preebm);
p5=DataFusionS(pretotalca);
p6=DataFusionS(preeca);
p7=DataFusionS(pretotalch);
p8=DataFusionS(preech);
p9=DataFusionS(pretotalcs);
p10=DataFusionS(preecs);
p11=DataFusionS(pretotaldhb);
p12=DataFusionS(preedhb);
p13=DataFusionS(pretotalea);
p14=DataFusionS(preeea);
p15=DataFusionS(pretotalfbw);
p16=DataFusionS(preefbw);
p17=DataFusionS(pretotalff);
p18=DataFusionS(preeff);
p19=DataFusionS(pretotalmv);
p20=DataFusionS(preemv);
p21=DataFusionS(pretotaloes);
p22=DataFusionS(preeoes);
p23=DataFusionS(pretotalsg);
p24=DataFusionS(preesg);
p25=DataFusionS(pretotalthg);
p26=DataFusionS(preethg);
p27=DataFusionS(pretotalom);
p28=DataFusionS(preeom);
p29=DataFusionS(pretotalnr);
p30=DataFusionS(preenr);
p=[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30]

