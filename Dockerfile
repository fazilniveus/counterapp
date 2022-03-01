FROM node:12.18.3  as builder
ENV NODE_ENV="development"

# Copy app's source code to the /app directory
COPY . /app

# The application's directory will be the working directory
WORKDIR /app

# Install Node.js dependencies defined in '/app/packages.json'
RUN npm install


COPY --from=builder /app /app
WORKDIR /app
ENV PORT 5002
EXPOSE 5002

# Start the application
CMD ["npm", "start"]
