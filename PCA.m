## PCA analysis

1-coefficient matrix, 2-transformed coordinates, 3-how much variance each component captures

[~,scores,pcvars] = princomp(expression');

## normalize using zscores
x = zscores(:,1);
y = zscores(:,2);
z = zscores(:,3);

% URL: http://www.mathworks.com/matlabcentral/fileexchange/37970-gscatter3
gscatter3(x,y,z,subtypes,{'b','g','m'},{'.','.','.'},15);

title('Gene Expressions of Cancer Subtypes');

xlable(['PC1-(',num2str(round(pcvars(1)/sum(pcvars)*100)),'%)']);
ylable(['PC2-(',num2str(round(pcvars(2)/sum(pcvars)*100)),'%)']);
zlable(['PC3-(',num2str(round(pcvars(3)/sum(pcvars)*100)),'%)']);

