## Clustergram in Matlab

chlustergram(expressions,'RowLabels',genes,'ColumnLabels',subtypes,...
      'RowPdist','euclidean','ColumnPDist','euclidean','Linkage','average',...
      'Standardize',2,'Colormap',redbluemap);
      
## RowPdist and columnPdist that specify the metrics to be used in column wise hierarchical clustering.
## Euclidean distance, Linkage cluster, average for distance,
      
      
% chlustergram(expressions,'RowLabels',genes,'ColumnLabels',subtypes,...
%           'Standardize',2,'Colormap',redbluemap);
