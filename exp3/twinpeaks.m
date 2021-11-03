[X, labels] = generate_data('twinpeaks', 2000, 0.05);
scatter3(X(:,1), X(:,2), X(:,3), 5, labels); drawnow
d = round(intrinsic_dim(X));

Y_pca = compute_mapping(X, 'PCA', d);
figure('name','PCA'), scatter(Y_pca(:,1), Y_pca(:,2), 5, labels), drawnow

Y_isomap = compute_mapping(X, 'Isomap', d);
figure('name','isomap'), scatter(Y_isomap(:,1), Y_isomap(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'tSNE', d);
figure('name','t_sne'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'GDA', d);
figure('name','GDA'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'DiffusionMaps', d);
figure('name','DiffusionMaps'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'LLE', d);
figure('name','LLE'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'Laplacian', d);
figure('name','Laplacian'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'HessianLLE', d);
figure('name','HessianLLE'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'LTSA', d);
figure('name','LTSA'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'LPP', d);
figure('name','LPP'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'NPE', d);
figure('name','NPE'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'LLTSA', d);
figure('name','LLTSA'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'LLC', d);
figure('name','LLC'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow

Y_tsne = compute_mapping(X, 'ManifoldChart', d);
figure('name','ManifoldChart'), scatter(Y_tsne(:,1), Y_tsne(:,2), 5, labels), drawnow
