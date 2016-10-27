function unitpricedata = mat2netcdf_1()

% This is dataset I, about average house prices of different districts in
% Shanghai.

%% 1 create nc file & define global Attributes
% ncid = netcdf.create(filename, mode)
% netcdf.putAtt(ncid,varid,attrname,attrvalue)
theNetCDFFile = 'dataset1.nc';
ncid = netcdf.create(theNetCDFFile, 'clobber');

varid = netcdf.getConstant('GLOBAL');
netcdf.putAtt(ncid,varid,'CreationDate',datestr(now));
netcdf.putAtt(ncid,varid,'Datasetcollector', 'Yichen Qiu, MS in ITWS stuendt at RPI');
netcdf.putAtt(ncid,varid,'CollectionTime', '09/30/2016');
netcdf.putAtt(ncid,varid,'CollectionLocation', 'Troy, NY, United States');
netcdf.putAtt(ncid,varid,'CollectionPurposes', 'The Collection about house prices of Shanghai is driven by questions, that is what is the average transaction prices and growth rates of each district in Shanghai during the past several years.');
netcdf.putAtt(ncid,varid,'SourceWebsites', 'http://sh.lianjia.com');
netcdf.putAtt(ncid,varid,'ConversionPerson', 'Yichen Qiu, MS in ITWS stuendt at RPI');
netcdf.putAtt(ncid,varid,'ConversionTime', '10/24/2016');
netcdf.putAtt(ncid,varid,'ConversionTools', 'Matlab 2016a for Mac');

%% 2 define Dimensions
% dimid = netcdf.defDim(ncid,dimname,dimlen)
districtID = netcdf.defDim(ncid,'district',15);

yearID = netcdf.defDim(ncid,'year',5);

%% 3 define Variables & define Attributes
% varid = netcdf.defVar(ncid,varname,xtype,dimids)
dID = netcdf.defVar(ncid,'district','int',districtID);
netcdf.putAtt(ncid,dID,'Description','1~Baoshan 2~Changning,3~Fenxian,4~Hongkou,5~Huangpu,6~Jiading,7~Jingan, 8~Zhabei,9~Minhang,10~Pudong,11~Putuo,12~Qingpu,13~Songjiang,14~Xuhui,15~Yangpu');

yID = netcdf.defVar(ncid,'year','int',yearID);
netcdf.putAtt(ncid,yID,'Description','from 2012 to 2016');

unitpriceID = netcdf.defVar(ncid,'unitprice','double',[districtID yearID]);
netcdf.putAtt(ncid,unitpriceID,'units','Yuan / square meters');

totalpriceID = netcdf.defVar(ncid,'totalprice','double',[districtID yearID]);
netcdf.putAtt(ncid,totalpriceID,'units','10000 Yuan');

areasID = netcdf.defVar(ncid,'areas','double',[districtID yearID]);
netcdf.putAtt(ncid,areasID,'units','square meters');

netcdf.endDef(ncid)

%% 4 add data
% netcdf.putVar(ncid,varid,data)
netcdf.putVar(ncid,dID,[1:15]);
netcdf.putVar(ncid,yID,[2012:2016]);

rawData = csvread('dataset1.csv',1,1);
netcdf.putVar(ncid,unitpriceID,rawData(:,3));
netcdf.putVar(ncid,totalpriceID,rawData(:,4));
netcdf.putVar(ncid,areasID,rawData(:,5));

%% 5 close and return data
% data = netcdf.getVar(ncid,varid)
ncdisp('dataset1.nc');
unitpricedata = netcdf.getVar(ncid,unitpriceID,'double');

netcdf.close(ncid);

end

