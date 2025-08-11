###################################################
# Stage: base
# 
# This base stage ensures all other stages are using the same base image
# and provides common configuration for all stages, such as the working dir.
###################################################
FROM node:22 AS base
RUN npm install -g pnpm
WORKDIR /usr/local/app
COPY package.json pnpm-lock.yaml ./
RUN pnpm install
COPY . .
CMD ["pnpm", "dev"]

################## DEVELOPMENT STAGES #############

###################################################
# Stage: development
#
# This stage is used for development. 
# since there are common steps needed for each. It sets the default
# command to start the Vite development server.
###################################################
# FROM base AS development
# CMD ["pnpm", "run", "dev"]

################## BUILD STAGES ##################

##################################################
# Stage: build
#
# This stage builds the application, producing static HTML, CSS and
# JS files, etc.
##################################################
# FROM base AS build
# RUN pnpm run build

################## PRODUCTION STAGES ##################

##################################################
# Stage: production
#
# This stage start the application to serve requests.
##################################################
# FROM node:22-slim AS production
# ENV NODE_ENV=production
# WORKDIR /app
# COPY --from=build /app/package.json ./
# COPY --from=build /app/.next ./.next
# COPY --from=build /app/node_modules ./node_modules
# EXPOSE 3000
# CMD ["pnpm", "start"]