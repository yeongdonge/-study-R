install.packages("ggplot2")
library("ggplot2")

diamonds

# 빈도수 확인
table(diamonds$cut)

# sort 함수로 내림차순으로 조회
sort(table(diamonds$cut), decreasing=TRUE)

# 백분율 계산
prop.table(table(diamonds$cut))
prop.table(table(diamonds$cut)) * 100

# 반올림
round(prop.table(table(diamonds$cut)) * 100, digits = 1)

# 빈도와 백분율을 한꺼번에 계산
install.packages("prettyR")
library("prettyR")
freq(diamonds$cut, display.na=FALSE)

# 단순한 막대그래프
barplot(table(diamonds$cut), col="red", main="limbest barchart")
# ylab : y축 제목, ylim: 눈금범위 지정
barplot(table(diamonds$cut), col="red", ylab="빈도", ylim=c(0,26000), main="limbest barchart")
# ggplot2를 사용한 막대 그래프
# aes 함수는 x축 혹은 y축에 입력된 데이터이다.
ggplot(data=diamonds, mapping=aes(x=cut)) + geom_bar()

# 원 그래프를 표시
pie(table(diamonds$cut))
# 반지름을 최대로 지정한다.
pie(table(diamonds$cut), radius=1)
# 시작하는 각도를 -30으로 지정
pie(table(diamonds$cut), radius=1, init.angle = -30)
