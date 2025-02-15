# Node.js 공식 이미지를 기반으로 합니다.
FROM node:14

# 앱 디렉토리 생성
WORKDIR /usr/src/app

# 앱 의존성 설치
# package.json과 package-lock.json을 모두 복사합니다 (있는 경우)
# COPY package*.json ./

RUN npm install
# 프로덕션을 위한 코드인 경우
# RUN npm ci --only=production

# 앱 소스 추가
COPY app.js .

# 앱이 3000번 포트를 사용하므로 해당 포트를 열어줍니다.
EXPOSE 3000

# 앱 실행
CMD [ "node", "app.js" ]