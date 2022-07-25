# Create a Jekyll container from a Ruby Alpine image

# Use Ruby >= 2.5
FROM ruby:2.7-alpine3.15 

# Add jekyll depencies to alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# update the Ruby bundler and install jekyll
RUN gem update bundler && gem install bundler jekyll 

