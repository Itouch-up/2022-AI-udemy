install.packages("KoNLP")
install.packages("rJava")

Sys.setenv(JAVA_HOME='C:/Program Files/Java/jre1.8.0_231')
library(wordcloud) 			# 워드클라우드
library(KoNLP) 			    # 한국어 처리
library(rJava)
library(RColorBrewer) 		# 색상 선택
text <- readLines("hwang.txt", encoding ="UTF-8" ) # 파일 읽기
buildDictionary(ext_dic = "woorimalsam") # '우리말씀' 한글사전 로딩
text

pal2 <- brewer.pal(8, "Dark2")
noun <- sapply(text, extractNoun, USE.NAMES = F) #명사 추출
noun

noun2 <- unlist(noun)
noun2
wordcount <- table(noun2)
wordcount

temp <- sort(wordcount, decreasing = T)[1:20]
temp
temp <- temp[-1]
temp

barplot(temp, 
        names.arg = names(temp),
        col="blue",
        main="빈도수가 높은 단어",
        ylab="단어 빈도수")

wordcloud(names(wordcount),
          freq = wordcount,
          scale = c(6,1),
          min.freq = 2,
          random.order = F,
          rot.per = .2,
          colors = pal2)

#패키지 설치확인방법
#system.file(package = 'NIADic')

# 없앨 단어 모두

# 빈도수가 높은데, 워드클라우드에 없으면 사용자 사전에 추가
buildDictionary(ext_dic = "woorimalsam",
                user_dic = data.frame("정치","ncn"),
                replace_usr_dic = T
                )
noun <- sapply(text, extractNoun, USE.NAMES = F)
noun2 <- unlist(noun)

# 무의미한 단어 제거
noun2 <- noun2[nchar(noun2)>1]
noun2
noun2 <- gsub("모두","",noun2)
noun2 <- gsub("그동안","",noun2)
wordcount <- table(noun2)

wordcloud(names(wordcount),
          freq = wordcount,
          scale = c(6,1),
          min.freq = 2,
          random.order = F,
          rot.per = .2,
          colors = pal2)