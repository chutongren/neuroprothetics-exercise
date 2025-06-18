figure(1);

load('data1.mat');
V=1000*V;
imagesc(V);
colormap(jet);

%make some adjustment to the picture
% set(gca,'YDir','reverse');

% xlim([0,100e-3]);
set(gca,'XTick',0:400:4000);
set(gca,'XTicklabel',{'0','10','20','30','40','50','60','70','80','90','100'});
xlabel('t(ms)');
% ylim([-1000e-6,1000e-6]);
% set(gca,'YTick',-1000e-6:500e-6:1000e-6);
% set(gca,'YTicklabel',{'-1000','-500','0','500','1000','80','100','120'});
ylabel('Components Nr.');
% title('(a) Currents iNa and iK for 6.3 °C and the input visible in figure 2')
% grid on;
% legend('i_{Na}','i_{K}');

c = colorbar;
c.Label.String = 'V(mV)';


figure(2);

load('data2.mat');
V=1000*V;
imagesc(V);
colormap(jet);

%make some adjustment to the picture
% set(gca,'YDir','reverse');

% xlim([0,100e-3]);
set(gca,'XTick',0:400:4000);
set(gca,'XTicklabel',{'0','10','20','30','40','50','60','70','80','90','100'});
xlabel('t(ms)');
% ylim([-1000e-6,1000e-6]);
% set(gca,'YTick',-1000e-6:500e-6:1000e-6);
% set(gca,'YTicklabel',{'-1000','-500','0','500','1000','80','100','120'});
ylabel('Components Nr.');
% title('(a) Currents iNa and iK for 6.3 °C and the input visible in figure 2')
% grid on;
% legend('i_{Na}','i_{K}');

c = colorbar;
c.Label.String = 'V(mV)';

figure(3);
load('data_4.mat');
V=1000*V;
imagesc(V);
colormap(jet);

%make some adjustment to the picture
% set(gca,'YDir','reverse');

% xlim([0,100e-3]);
set(gca,'XTick',0:400:4000);
set(gca,'XTicklabel',{'0','10','20','30','40','50','60','70','80','90','100'});
xlabel('t(ms)');
% ylim([-1000e-6,1000e-6]);
% set(gca,'YTick',-1000e-6:500e-6:1000e-6);
% set(gca,'YTicklabel',{'-1000','-500','0','500','1000','80','100','120'});
ylabel('Components Nr.');
% title('(a) Currents iNa and iK for 6.3 °C and the input visible in figure 2')
% grid on;
% legend('i_{Na}','i_{K}');

c = colorbar;
c.Label.String = 'V(mV)';