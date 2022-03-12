##Build Phase
FROM node:alpine as builder
WORKDIR "/app"
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

##Run Phase /app/build will be where we have the builds
FROM nginx
# FOR DEPLOYMENT EXPOSE 80 in AWS, In my case was optional
# EXPOSE 80
# Copy from builder phase the app/build and copy to nginx path (check documentation, but serves html)
COPY --from=builder /app/build /usr/share/nginx/html