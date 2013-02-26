% stop words from http://www.tomdiethe.com/teaching/remove_stopwords.m

load('smap.mat')

stopWords = textread('stopwords_english.txt', '%s')
numStopWords = length(stopWords)

stopWordIndexes = []

for i = 1 : numStopWords
    stopWordIndex = find(strcmp(stopWords{i}, smap))
    if ~ isempty(stopWordIndex)
        stopWordIndexes = [stopWordIndexes stopWordIndex]
    end
    display('word: ')
    stopWords{i}
end

save('stopwords.mat', 'stopWords', 'stopWordIndexes')