FROM getsentry/sentry-cli:2.1.0
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
