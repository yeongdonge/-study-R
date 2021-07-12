library("ggplot2")
diamonds

# 히스토그램 작성
hist(diamonds$price)

# 지정한 구간 데이터로 히스토그램 작성
hist(diamonds$price, breaks=c(0, 5000, 10000, 15000, 25000))

# 상용자가 지정한 구간의 개수로 가시화
hist(diamonds$price, breaks=10)

# boxplot
boxplot(diamonds$price)

# range 이상값을 분석하기 위해서 사용한다.
boxplot(diamonds$price, range=3)

# 양적자료 + 질적자료
boxplot(diamonds$price~diamonds$cut)

# 변수 타입 확인
str(iris)

# 평균과 중심값을 확인
summary(iris)

par(mfrow=c(2,2))
boxplot(Sepal.Length~Species, data=iris, main="Sepal.Length")
boxplot(Sepal.Width~Species, data=iris, main="Sepal.Width")
boxplot(Petal.Length~Species, data=iris, main="Petal.Length")
boxplot(Petal.Width~Species, data=iris, main="Petal.Width")

# 산점도 확인
# x1 : 학교까지의 거리 데이터
# x2 : 학생들의 성적

help("cor")
x1 = c(10,1,5,2,4,6,1,3,8)
x2 = c(82,94,88,90,87,84,91,87,83)
cor(x1, x2)
plot(x1, x2, main="상관관계 테스트")
abline(lm(x2~x1), col="red", lwd=2, lty=1)

# 선 그래프
par(mfrow=c(1,1))
month=1:12
late=c(4,5,7,19,12,13,6,5,4,2,8,9)
plot(month,# X변수
     late, # Y변수
     main="지각학생", # 제목
     type="l", # 그래프 종류
     lwd=2, # 선 굵기
     xlab="월", # X축 레이블
     ylab="지각횟수") # Y축 레이블

# 점 그래프
par(mfrow=c(1,1))
month=1:12
late=c(4,5,7,19,12,13,6,5,4,2,8,9)
plot(month,# X변수
     late, # Y변수
     main="지각학생", # 제목
     type="b", # 그래프 종류
     lwd=2, # 선 굵기
     xlab="월", # X축 레이블
     ylab="지각횟수") # Y축 레이블

# 계단형 그래프
par(mfrow=c(1,1))
month=1:12
late=c(4,5,7,19,12,13,6,5,4,2,8,9)
plot(month,# X변수
     late, # Y변수
     main="지각학생", # 제목
     type="s", # 그래프 종류
     lwd=2, # 선 굵기
     xlab="월", # X축 레이블
     ylab="지각횟수") # Y축 레이블

# 여러개의 선 그래프
late2=c(8,7,5,4,11,12,6,2,7,1,10,12)

par(mfrow=c(1,1))
month=1:12
late=c(4,5,7,19,12,13,6,5,4,2,8,9)
plot(month,# X변수
     late, # Y변수
     main="지각학생", # 제목
     type="s", # 그래프 종류
     lwd=2, # 선 굵기
     xlab="월", # X축 레이블
     ylab="지각횟수") # Y축 레이블
lines(month, late2, type="l", col="red")
