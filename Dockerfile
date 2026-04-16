FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 CMD curl -f http://localhost/ || exit 1
CMD ["nginx", "-g", "daemon off;"]