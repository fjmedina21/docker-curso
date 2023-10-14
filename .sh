docker container run `
-dp 3000:3000 `
--name nest-app `
-w /app `
-v ${pwd}:/app `
node:16-alpine3.16 `
sh -c "yarn install && yarn start:dev"