load('tokenized.mat');
display('finished loading tokenized.mat')

save('scnt.mat', 'scnt')
display('finished saving scnt.mat')
load('scnt.mat');
%find the first element in scnt that is smaller than 500
%tmppos = find(scnt<=300,1, 'first');
%smap = smap(1:tmppos);
save('smap.mat','smap')
display('finished saving smap.mat')

tokens =tokens(3,:);
save('-v7.3', 'tokens.mat', 'tokens')
display('finished saving tokens.mat')

tokenstest = tokens(1:5000);
save('-v7.3', 'tokenstest.mat','tokenstest')